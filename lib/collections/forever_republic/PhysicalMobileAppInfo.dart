import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

import '../../main.dart';

class PhysicalMobileAppInfo extends StatefulWidget {
  const PhysicalMobileAppInfo({super.key});

  @override
  State<PhysicalMobileAppInfo> createState() => _PhysicalMobileAppInfoState();
}

class _PhysicalMobileAppInfoState extends State<PhysicalMobileAppInfo> {
  bool appVersionUpdatedStatus = false;

  double cachedValue = 1.0;
  String versionNumber = "1.0.1";


  void onClearCache() {}

  String getCacheFormat(double cacheValue){
    return "$cachedValue B";
  }
  String getUpdateStatusText(bool appVersionUpdatedStatus) {
    return appVersionUpdatedStatus ? "UPDATE TO DATE" : "UPDATE APP";
  }

  onClickUpdate() {}

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

            // App Version
            CustomCollectionCard(
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "App version $versionNumber",
              gap: 24,
              endWidget: GestureDetector(
                  onTap: !appVersionUpdatedStatus ? onClickUpdate :null,
                  child: Text(getUpdateStatusText(appVersionUpdatedStatus),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black.withOpacity(!appVersionUpdatedStatus ? 0.6 :0.4)),)),
      ),

            // Cache
            CustomCollectionCard(
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Cached Used: ${getCacheFormat(cachedValue)}",
              gap: 24,
              endWidget:  GestureDetector(
                onTap: cachedValue > 0 ? onClearCache :null,
                  child: Text("CLEAR",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black.withOpacity(cachedValue > 0 ? 0.6 :0.4)),)),
            ),


          ],
        ),
      ),
    );
  }






}
