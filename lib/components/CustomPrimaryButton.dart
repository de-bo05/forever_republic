import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final EdgeInsets buttonPadding;
  final double buttonBorderRadius;
  final bool isEnabled;
  final Function()? onTap;

  const CustomPrimaryButton(
      {super.key,
      required this.buttonText,
      this.buttonTextStyle,
      this.onTap,
       this.buttonPadding = const EdgeInsets.symmetric(horizontal: 16,vertical: 12),  this.buttonBorderRadius = 8,  this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomOnClickContainer(
            borderRadius: BorderRadius.circular(buttonBorderRadius),
              onTap: onTap,
              defaultColor: isEnabled ? Colors.black : Colors.black.withOpacity(0.3),
              clickedColor: Colors.black.withOpacity(0.3),
              child: Center(
                child: Padding(
                  padding: buttonPadding,
                  child: Text(
                    buttonText,
                    style: buttonTextStyle,
                  ),
                ),
              )),
        )
      ],
    );
  }
}
