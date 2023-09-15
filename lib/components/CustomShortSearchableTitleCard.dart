import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/main.dart';

import '../collections/forever_republic/SearchAndCartIconCollection.dart';
import 'CustomCircularButton.dart';

class CustomShortSearchableTitleCard extends StatelessWidget {
  final String pageTitle;
  final Function()? onBackPressed;

  const CustomShortSearchableTitleCard(
      {super.key,
      required this.pageTitle,
      this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // backButton
            onBackPressed != null
                ? CustomCircularButton(
                    imagePath: null,
                    iconColor: Colors.white,
                    onPressed: onBackPressed,
                    icon: Icons.arrow_back,
                    gap: 8,
                    width: 40,
                    height: 40,
                    iconSize: 25,
                    defaultBackgroundColor: Colors.transparent,
                    colorImage: true,
                    clickedBackgroundColor: Colors.black.withOpacity(0.3),
                  )
                : const SizedBox(),

            //  Page Title

            Expanded(
                child: Text(
              pageTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),

            const SearchAndCartIconCollection()

          ],
        ),
      ),
    );
  }
}
