

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class SavedItemScreenPhysicalMobilePage extends StatefulWidget {
  const SavedItemScreenPhysicalMobilePage({super.key});

  @override
  State<SavedItemScreenPhysicalMobilePage> createState() => _SavedItemScreenPhysicalMobilePageState();
}

class _SavedItemScreenPhysicalMobilePageState extends State<SavedItemScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Saved Items',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
