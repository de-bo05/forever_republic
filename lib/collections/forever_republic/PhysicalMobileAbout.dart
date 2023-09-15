import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

class PhysicalMobileAbout extends StatelessWidget {
  const PhysicalMobileAbout({super.key});


  void clickFRServices(){}
  void clickFaq(){}
  void clickPrivacyPolicy(){}



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

            // FR Services
            CustomCollectionCard(
              onClick: clickFRServices,
              clickedColor: Colors.grey.withOpacity(0.3),
              text: "FR Services",
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              gap: 24,
              endWidget: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Faq
            CustomCollectionCard(
              onClick: clickFaq,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "FAQ",
              gap: 24,
              endWidget: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Privacy Policy
            CustomCollectionCard(
              onClick: clickPrivacyPolicy,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Privacy Policy",
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
