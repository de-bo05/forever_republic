

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class CloseAccountScreenPhysicalMobilePage extends StatefulWidget {
  const CloseAccountScreenPhysicalMobilePage({super.key});

  @override
  State<CloseAccountScreenPhysicalMobilePage> createState() => _CloseAccountScreenPhysicalMobilePageState();
}

class _CloseAccountScreenPhysicalMobilePageState extends State<CloseAccountScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Close Account',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
