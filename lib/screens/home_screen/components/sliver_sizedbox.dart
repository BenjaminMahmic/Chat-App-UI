import 'package:flutter/cupertino.dart';

class SliverSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;

  const SliverSizedBox({
    Key? key,
    this.height = 0.0,
    this.width = 0.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
        width: width,
        child: child,
      ),
    );
  }
}
