

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class RecentlySearchedScreenPhysicalMobilePage extends StatefulWidget {
  const RecentlySearchedScreenPhysicalMobilePage({super.key});

  @override
  State<RecentlySearchedScreenPhysicalMobilePage> createState() => _RecentlySearchedScreenPhysicalMobilePageState();
}

class _RecentlySearchedScreenPhysicalMobilePageState extends State<RecentlySearchedScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Recently Searched',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
