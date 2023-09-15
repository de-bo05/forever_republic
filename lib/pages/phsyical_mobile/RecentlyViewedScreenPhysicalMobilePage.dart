

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class RecentlyViewedScreenPhysicalMobilePage extends StatefulWidget {
  const RecentlyViewedScreenPhysicalMobilePage({super.key});

  @override
  State<RecentlyViewedScreenPhysicalMobilePage> createState() => _RecentlyViewedScreenPhysicalMobilePageState();
}

class _RecentlyViewedScreenPhysicalMobilePageState extends State<RecentlyViewedScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Recently Viewed',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
