

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class InboxScreenPhysicalMobilePage extends StatefulWidget {
  const InboxScreenPhysicalMobilePage({super.key});

  @override
  State<InboxScreenPhysicalMobilePage> createState() => _InboxScreenPhysicalMobilePageState();
}

class _InboxScreenPhysicalMobilePageState extends State<InboxScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Inbox',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
