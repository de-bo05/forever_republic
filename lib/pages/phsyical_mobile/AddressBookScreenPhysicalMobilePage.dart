

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomShortSearchableTitleCard.dart';

class AddressBookScreenPhysicalMobilePage extends StatefulWidget {
  const AddressBookScreenPhysicalMobilePage({super.key});

  @override
  State<AddressBookScreenPhysicalMobilePage> createState() => _AddressBookScreenPhysicalMobilePageState();
}

class _AddressBookScreenPhysicalMobilePageState extends State<AddressBookScreenPhysicalMobilePage> {

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
            CustomShortSearchableTitleCard(pageTitle: 'Address Book',onBackPressed: performBackPressed,)


          ],
        ),
      ),
    );
  }
}
