

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class OrderScreenPhysicalMobilePage extends StatefulWidget {
  const OrderScreenPhysicalMobilePage({super.key});

  @override
  State<OrderScreenPhysicalMobilePage> createState() => _OrderScreenPhysicalMobilePageState();
}

class _OrderScreenPhysicalMobilePageState extends State<OrderScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Order',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
