

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class RatingAndReviewScreenPhysicalMobilePage extends StatefulWidget {
  const RatingAndReviewScreenPhysicalMobilePage({super.key});

  @override
  State<RatingAndReviewScreenPhysicalMobilePage> createState() => _RatingAndReviewScreenPhysicalMobilePageState();
}

class _RatingAndReviewScreenPhysicalMobilePageState extends State<RatingAndReviewScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Rating & Review',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
