import 'dart:async';

import 'package:flutter/cupertino.dart';

class WidgetStateNotifier<T> {
  StreamController<T?> streamController = StreamController<T?>.broadcast();

  void sendNewState(T? state) {
    streamController.add(state);
  }
}

class WidgetStateNotifierBuilder extends StatefulWidget {
  const WidgetStateNotifierBuilder({Key? key}) : super(key: key);

  @override
  State<WidgetStateNotifierBuilder> createState() =>
      _WidgetStateNotifierBuilderState();
}

class _WidgetStateNotifierBuilderState
    extends State<WidgetStateNotifierBuilder> {
  WidgetStateNotifier b = WidgetStateNotifier();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
