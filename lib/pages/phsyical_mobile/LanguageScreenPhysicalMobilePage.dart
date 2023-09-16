

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class LanguageScreenPhysicalMobilePage extends StatefulWidget {
  const LanguageScreenPhysicalMobilePage({super.key});

  @override
  State<LanguageScreenPhysicalMobilePage> createState() => _LanguageScreenPhysicalMobilePageState();
}

class _LanguageScreenPhysicalMobilePageState extends State<LanguageScreenPhysicalMobilePage> {

  void performBackPressed() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

          //   Page Title
            CustomShortSearchableTitleCard(pageTitle: 'Choose Language',onBackPressed: performBackPressed,showAttachedCollection: false,)


          ],
        ),
      ),
    );
  }
}
