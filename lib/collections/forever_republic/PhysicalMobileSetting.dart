import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

class PhysicalMobileSetting extends StatelessWidget {
  const PhysicalMobileSetting({super.key});


  void clickAddressBook(){}
  void clickCloseAccount(){}
  void clickRatingAndReview(){}



  @override
  Widget build(BuildContext context) {
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
              gap: 24,
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Account Management
            CustomCollectionCard(
              onClick: clickCloseAccount,
              clickedColor: Colors.grey.withOpacity(0.3),

              text: "Account Management",
              gap: 24,
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Close Account
            CustomCollectionCard(
              onClick: clickRatingAndReview,
              clickedColor: Colors.grey.withOpacity(0.3),

              text: "Close Account",
              gap: 24,
              endIcon: const Icon(
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