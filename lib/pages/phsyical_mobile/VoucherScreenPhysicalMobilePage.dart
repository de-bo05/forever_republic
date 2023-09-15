

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class VoucherScreenPhysicalMobilePage extends StatefulWidget {
  const VoucherScreenPhysicalMobilePage({super.key});

  @override
  State<VoucherScreenPhysicalMobilePage> createState() => _VoucherScreenPhysicalMobilePageState();
}

class _VoucherScreenPhysicalMobilePageState extends State<VoucherScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Voucher',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
