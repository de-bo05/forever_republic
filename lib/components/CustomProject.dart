import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';

bool closeCustomProgressBar(BuildContext context) {
  Navigator.pop(context);
  return false;
}

bool showCustomProgressBar(BuildContext context, {var cancelTouch = false}) {
  showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color(getMainBlueColor),
          ),
        );
      },
      barrierDismissible: !cancelTouch);
  return cancelTouch;
}

showDebug({dynamic msg = ''}) {
  if (kDebugMode) {
    print(msg);
  }
}

openDialog(BuildContext context, Widget? title, Widget content,
        List<Widget> actions,
        {EdgeInsets? padding, Function()? onClosed}) =>
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              contentPadding: padding,
              title: title,
              content: content,
              actions: actions,
            )).then((value) {
      try {
        onClosed!();
      } catch (e) {
        null;
      }
    });

hideKeyboard(BuildContext context) =>
    FocusScope.of(context).requestFocus(FocusNode());

showToastMobile({dynamic msg = "Nothing to display", bool longTime = false}) =>
    Fluttertoast.showToast(
        msg: "$msg",
        toastLength: longTime ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM);

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Widget Function(BuildContext, Widget?)? setMaxTextScaleFactor(
    {double maxFactor = 1, double? returnFactor}) {
  return (BuildContext context, Widget? child) {
    final MediaQueryData data = MediaQuery.of(context);
    return MediaQuery(
        data: data.copyWith(
            textScaleFactor: data.textScaleFactor > maxFactor
                ? maxFactor
                : returnFactor ?? data.textScaleFactor),
        child: child!);
  };
}

Widget progressBarWidget() {
  return const CircularProgressIndicator(color: Color(getMainBlueColor));
}

String dbReference(dynamic ref) {
  return ref.toString().replaceAll(".", "_").toLowerCase().trim();
}

Map<String, dynamic>? dbData(Object? data) {
  return data != null && data is Map<String, dynamic> ? data : null;
}
