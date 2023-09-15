

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class AccountManagementScreenPhysicalMobilePage extends StatefulWidget {
  const AccountManagementScreenPhysicalMobilePage({super.key});

  @override
  State<AccountManagementScreenPhysicalMobilePage> createState() => _AccountManagementScreenPhysicalMobilePageState();
}

class _AccountManagementScreenPhysicalMobilePageState extends State<AccountManagementScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Account Management',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
