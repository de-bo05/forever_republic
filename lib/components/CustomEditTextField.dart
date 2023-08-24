import 'package:flutter/material.dart';

import '../main.dart';

class CustomEditTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final double textSize;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextCapitalization capitalization;

  const CustomEditTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.textSize,
      this.maxLength,
      this.keyboardType,
      this.capitalization = TextCapitalization.none});

  @override
  CustomEditTextFieldState createState() => CustomEditTextFieldState();
}

class CustomEditTextFieldState extends State<CustomEditTextField> {
  bool getObscured = true;
  bool change = false;

  @override
  void initState() {
    getObscured = widget.obscureText;
    widget.controller.addListener(() {
      setState(() {
        change = true;
        change = false;
      });
    });
    super.initState();
  }

  Widget getTheEndIcon() {
    if (widget.obscureText) {
      return IconButton(
          onPressed: () {
            setState(() {
              getObscured = !getObscured;
            });
          },
          icon: getObscured
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off));
    } else {
      return IconButton(
          onPressed: () {
            widget.controller.clear();
          },
          icon: const Icon(Icons.cancel));
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: widget.capitalization,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: getObscured,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        suffixIcon: !change
            ? widget.controller.text.isNotEmpty
                ? getTheEndIcon()
                : null
            : null,
        suffixIconColor: Colors.black,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color(getLighterGreyTextColor)),
        fillColor: const Color(getLightGreyColor),
        filled: false,
      ),
      style: TextStyle(
        fontSize: widget.textSize,
        color: const Color(getGreyTextColor),
        decoration: TextDecoration.none,
        decorationThickness: 0,
      ),
    );
  }
}
