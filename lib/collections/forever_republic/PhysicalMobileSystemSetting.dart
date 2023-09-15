import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

import '../../main.dart';

class PhysicalMobileSystemSetting extends StatefulWidget {
  const PhysicalMobileSystemSetting({super.key});

  @override
  State<PhysicalMobileSystemSetting> createState() => _PhysicalMobileSystemSettingState();
}

class _PhysicalMobileSystemSettingState extends State<PhysicalMobileSystemSetting> {
  String country = "RWANDA";

  String language = "ENGLISH";
  bool pushNotificationAllowed = false;

  void clickCountry(){}

  void clickLanguage(){}
  void changePushNotificationStatus(bool value) {

    setState(() {
      pushNotificationAllowed = !pushNotificationAllowed;
    });


  }

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

            // Push Notification
            CustomCollectionCard(
              clickedColor: Colors.grey.withOpacity(0.3),
              text: "Push Notification",
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              gap: 24,
              endWidget: SizedBox(
                height: 15,
                child: Switch(
                    activeColor:
                     Colors.black.withOpacity(0.8),
                    inactiveThumbColor:
                    const Color(getDarkGreyColor),
                    activeTrackColor:
                     Colors.black.withOpacity(0.3),
                    inactiveTrackColor:
                    const Color(getDarkGreyColor)
                        .withOpacity(0.5),
                    value: pushNotificationAllowed,
                  onChanged: changePushNotificationStatus
                ),
              ),
            ),

            // Country
            CustomCollectionCard(
              onClick: clickCountry,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Country",
              gap: 24,
              endWidget: Row(
                children: [
                  // Text
                  Text(country,style: TextStyle(color: Colors.black.withOpacity(0.8),fontWeight: FontWeight.w500),),
                  // Icon
                  const SizedBox(width: 4,),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                ],
              ),
            ),

            // Language
            CustomCollectionCard(
              onClick: clickLanguage,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Language",
              gap: 24,
              endWidget:  Text(language,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black.withOpacity(0.4)),),
            ),





          ],
        ),
      ),
    );
  }


}
