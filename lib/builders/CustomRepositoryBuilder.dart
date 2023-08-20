import 'package:flutter/cupertino.dart';

typedef DisplayRepositoryDataBuilder<A> = Widget Function(A? data);
typedef InitialRepositoryDataBuilder<A> = A? Function(BuildContext context);
typedef OnlineRepositoryBuilder<T> = Widget Function(
    BuildContext context,
    CustomRepositoryBuilder<T?> customRepositoryBuilder,
    T? initialData,
    LatestDataNotifier<T?> latestDataNotifier);

class LatestDataNotifier<B> extends ChangeNotifier {
  B? get;

  void set(B? value) {
    get = value;
    notifyListeners();
  }

  void clear() {
    get = null;

    notifyListeners();
  }
}

class CustomRepositoryBuilder<A> extends StatefulWidget {
  final InitialRepositoryDataBuilder<A?> initialRepositoryDataBuilder;
  final DisplayRepositoryDataBuilder<A?> displayRepositoryDataBuilder;
  final OnlineRepositoryBuilder<A?> onlineBuilder;

  const CustomRepositoryBuilder({
    Key? key,
    required this.onlineBuilder,
    required this.displayRepositoryDataBuilder,
    required this.initialRepositoryDataBuilder,
  }) : super(key: key);

  @override
  State<CustomRepositoryBuilder<A?>> createState() =>
      _CustomRepositoryBuilderState<A?>();
}

class _CustomRepositoryBuilderState<T>
    extends State<CustomRepositoryBuilder<T?>> {
  T? get initialData => widget.initialRepositoryDataBuilder(context);
  LatestDataNotifier<T?>  latestDataNotifier = LatestDataNotifier();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    latestDataNotifier.set(null);
    latestDataNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onlineBuilder(
        context, widget, initialData, latestDataNotifier);
  }
}
