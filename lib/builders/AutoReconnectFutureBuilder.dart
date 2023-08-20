import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';

typedef AutoFutureBuilder<A> = Widget Function(
    BuildContext context, AutoFutureSnapshot<A> autoSnapshot);

enum AutoFutureResult { waiting, noConnection, hasData, none }

class AutoFutureSnapshot<T> {
  final AutoFutureResult result;
  final T? data;

  bool get isNone => result == AutoFutureResult.none;

  bool get hasData => result == AutoFutureResult.hasData;

  bool get noConnection => result == AutoFutureResult.noConnection;

  bool get isWaiting => result == AutoFutureResult.waiting;

  bool get nullData => data == null;

  AutoFutureSnapshot(this.result, this.data);
}

class AutoReconnectFutureBuilder<T> extends StatefulWidget {
  final Future<T?> autoFuture;

  final AutoFutureBuilder<T?> builder;

  const AutoReconnectFutureBuilder({
    Key? key,
    required this.autoFuture,
    required this.builder,
  }) : super(key: key);

  @override
  State<AutoReconnectFutureBuilder<T?>> createState() =>
      _AutoReconnectFutureBuilderState<T?>();
}

class _AutoReconnectFutureBuilderState<T>
    extends State<AutoReconnectFutureBuilder<T?>> {
  bool errorOccurredForData = false;
  bool onDone = false;
  Future<T?>? futureSubscription;
  AutoFutureSnapshot<T?> value =
      AutoFutureSnapshot(AutoFutureResult.waiting, null);
  StreamSubscription<ConnectivityResult>? connectionSubscription;

  @override
  void initState() {
    super.initState();

    checkFuture();
    connectionSubscription =
        Connectivity().onConnectivityChanged.listen(onConnectionChanged);
  }

  @override
  void didUpdateWidget(covariant AutoReconnectFutureBuilder<T?> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.autoFuture != widget.autoFuture) {
      futureSubscription = null;
      setState(() {
        value = AutoFutureSnapshot(AutoFutureResult.none, null);
      });
      checkFuture();
    }
  }

  void onConnectionChanged(ConnectivityResult result) {
    if (result != ConnectivityResult.none && errorOccurredForData && !onDone) {
      futureSubscription = null;
      checkFuture();
    } else if (onDone) {
      futureSubscription = null;
    }
  }

  void checkFuture() {
    try {
      futureSubscription = widget.autoFuture;
      futureSubscription?.then(onValue).onError((Object error, stackTrace) {
        try {
          setState(() {
            errorOccurredForData = true;
            value = AutoFutureSnapshot(AutoFutureResult.noConnection, null);
          });
        } catch (e) {
          null;
        }
      });
    } catch (e) {
      null;
    }
  }

  void onValue(T? event) {
    setState(() {
      errorOccurredForData = false;
      value = AutoFutureSnapshot(AutoFutureResult.hasData, event);
      onDone = true;
    });
  }

  @override
  void dispose() {
    connectionSubscription?.cancel();
    futureSubscription = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, value);
  }
}
