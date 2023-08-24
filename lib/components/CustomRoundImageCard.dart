import 'package:flutter/cupertino.dart';

class CustomRoundImageCard extends StatelessWidget {
  final String imagePath;
  final double radius;
  final BoxFit fit;

  const CustomRoundImageCard(
      {Key? key,
      required this.imagePath,
      required this.radius,
       this.fit = BoxFit.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: fit,
        ),
      ),
    );
  }
}
