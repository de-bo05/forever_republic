import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

class RetryStreamListener extends ChangeNotifier {
  bool retrying = false;

  void stopRetry() {
    retrying = false;
    notifyListeners();
  }

  void startRetrying() {
    retrying = true;
    notifyListeners();
  }
}

typedef AsyncControlledStreamBuilder<A> = Widget Function(
    BuildContext context, ControlledStreamSnapshot<A> autoSnapshot);

enum ControlledStreamResult { waiting, noConnection, hasData, none, done }

class ControlledStreamSnapshot<T> {
  final ControlledStreamResult result;
  final T? data;

  bool get isDone => result == ControlledStreamResult.done;

  bool get isNone => result == ControlledStreamResult.none;

  bool get hasData => result == ControlledStreamResult.hasData;

  bool get noConnection => result == ControlledStreamResult.noConnection;

  bool get isWaiting => result == ControlledStreamResult.waiting;

  bool get nullData => data == null;

  ControlledStreamSnapshot(this.result, this.data);
}

typedef ControlledStreamProvider<A> = Stream<A>? Function(BuildContext context);

class ControlledStreamBuilder<T> extends StatefulWidget {
  final AsyncControlledStreamBuilder<T?> builder;
  final T? initialData;
  final ControlledStreamProvider<T>? streamProvider;
  final RetryStreamListener? retryStreamListener;

  const ControlledStreamBuilder(
      {Key? key,
      required this.builder,
      this.initialData,
      this.retryStreamListener,
      required this.streamProvider})
      : super(key: key);

  @override
  State<ControlledStreamBuilder<T>> createState() =>
      _ControlledStreamBuilderState<T>();
}

class _ControlledStreamBuilderState<T>
    extends State<ControlledStreamBuilder<T>> {
  bool errorOccurredForData = false;
  ControlledStreamSnapshot<T?> value =
      ControlledStreamSnapshot(ControlledStreamResult.waiting, null);
  StreamSubscription<T?>? streamSubscription;
  StreamSubscription<ConnectivityResult>? connectionSubscription;

  @override
  void initState() {
    super.initState();

    checkStream();
    connectionSubscription =
        Connectivity().onConnectivityChanged.listen(onConnectionChanged);

    widget.retryStreamListener?.addListener(() {
      if (widget.retryStreamListener?.retrying == true) {
        endStream();
        setState(() {
          value =
              ControlledStreamSnapshot(ControlledStreamResult.waiting, null);
        });
        checkStream();
        widget.retryStreamListener?.stopRetry();
      }
    });
  }

  @override
  void didUpdateWidget(covariant ControlledStreamBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.streamProvider != widget.streamProvider) {
      endStream();
      setState(() {
        value = ControlledStreamSnapshot(ControlledStreamResult.none, null);
      });
      checkStream();
    }
  }

  void onConnectionChanged(ConnectivityResult result) {
    if (result != ConnectivityResult.none && errorOccurredForData) {
      endStream();
      setState(() {
        value = ControlledStreamSnapshot(ControlledStreamResult.waiting, null);
      });
      checkStream();
    }
  }

  void endStream() {
    streamSubscription?.cancel();
    streamSubscription = null;
    errorOccurredForData = false;
  }

  void checkStream() {
    if (streamSubscription == null && widget.streamProvider != null) {
      streamSubscription = widget.streamProvider!(context)?.listen(onListen);

      streamSubscription?.onError((Object error, stackTrace) {
        try {
          errorOccurredForData = true;
          setState(() {
            if (value.result != ControlledStreamResult.hasData) {
              value = ControlledStreamSnapshot(
                  ControlledStreamResult.noConnection, null);
            }
          });
        } catch (e) {
          null;
        }
        endStream();
      });
    }
  }

  void onListen(T? event) {
    try {
      errorOccurredForData = false;
      setState(() {
        value = ControlledStreamSnapshot(ControlledStreamResult.hasData, event);
      });
    } catch (e) {
      null;
    }
  }

  @override
  void dispose() {
    super.dispose();
    widget.retryStreamListener?.dispose();
    connectionSubscription?.cancel();
    streamSubscription?.cancel();
    connectionSubscription = null;
    streamSubscription = null;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, value);
  }
}
