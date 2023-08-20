import 'package:flutter/cupertino.dart';

typedef WrapListBuilder<A> = Widget Function(BuildContext context, int index);

class CustomWrapListBuilder extends StatefulWidget {
  final int? itemCount;
  final WrapListBuilder wrapListBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final TextDirection? textDirection;
  final CrossAxisAlignment crossAxisAlignment;
  final VerticalDirection verticalDirection;
  final TextBaseline? textBaseline;

  const CustomWrapListBuilder(
      {Key? key,
      required this.wrapListBuilder,
      required this.itemCount,
      this.mainAxisSize = MainAxisSize.max,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.textBaseline,
      this.verticalDirection = VerticalDirection.down,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.textDirection})
      : super(key: key);

  @override
  State<CustomWrapListBuilder> createState() => _CustomWrapListBuilderState();
}

class _CustomWrapListBuilderState extends State<CustomWrapListBuilder> {
  List<Widget> builders = [];

  @override
  void initState() {
    super.initState();
    getBuilders();
  }

  void getBuilders() {
    final getBuilders = [
      for (var index = 0; index < (widget.itemCount ?? 0); index++)
        Builder(builder: (context) {
          return widget.wrapListBuilder(context, index);
        })
    ];
    setState(() {
      builders = getBuilders;
    });
  }

  @override
  void didUpdateWidget(covariant CustomWrapListBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    builders = [];
    getBuilders();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: widget.mainAxisAlignment,
        mainAxisSize: widget.mainAxisSize,
        crossAxisAlignment: widget.crossAxisAlignment,
        textDirection: widget.textDirection,
        verticalDirection: widget.verticalDirection,
        textBaseline: widget.textBaseline,
        children: builders,
      ),
    );
  }
}
