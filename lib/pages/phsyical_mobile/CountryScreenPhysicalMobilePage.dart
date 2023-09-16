

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class CountryScreenPhysicalMobilePage extends StatefulWidget {
  const CountryScreenPhysicalMobilePage({super.key});

  @override
  State<CountryScreenPhysicalMobilePage> createState() => _CountryScreenPhysicalMobilePageState();
}

class _CountryScreenPhysicalMobilePageState extends State<CountryScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Choose Country',onBackPressed: performBackPressed,showAttachedCollection: false,)


          ],
        ),
      ),
    );
  }
}
