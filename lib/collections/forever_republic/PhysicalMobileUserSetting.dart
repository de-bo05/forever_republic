import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

import '../../pages/phsyical_mobile/AccountManagementScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/AddressBookScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/CloseAccountScreenPhysicalMobilePage.dart';

class PhysicalMobileUserSetting extends StatelessWidget {
  const PhysicalMobileUserSetting({super.key});





  @override
  Widget build(BuildContext context) {

    void clickAddressBook(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const AddressBookScreenPhysicalMobilePage()));
    }
    void clickCloseAccount(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const AccountManagementScreenPhysicalMobilePage()));
    }
    void clickRatingAndReview(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const CloseAccountScreenPhysicalMobilePage()));
    }


    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child:  Column(
          children: [

            // Address Book
            CustomCollectionCard(
              onClick: clickAddressBook,
              clickedColor: Colors.grey.withOpacity(0.3),
              text: "Address book",
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              gap: 24,
              endWidget: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Account Management
            CustomCollectionCard(
              onClick: clickCloseAccount,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Account Management",
              gap: 24,
              endWidget: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Close Account
            CustomCollectionCard(
              onClick: clickRatingAndReview,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Close Account",
              gap: 24,
              endWidget: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),





          ],
        ),
      ),
    );
  }
}
