import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

import '../../main.dart';

class PhysicalMobileAppInfo extends StatefulWidget {
  const PhysicalMobileAppInfo({super.key});

  @override
  State<PhysicalMobileAppInfo> createState() => _PhysicalMobileAppInfoState();
}

class _PhysicalMobileAppInfoState extends State<PhysicalMobileAppInfo> {


  CacheManager cacheManager = DefaultCacheManager();
  Directory tempDir =  Directory.systemTemp;

  bool appVersionUpdatedStatus = false;

  double cachedValue = 1.0;
  String versionNumber = "1.0.1";


  @override
  void initState() {
    super.initState();
    getCacheSize();

  }


  void getCacheSize()  {
    double tempDirSize = _getSize(tempDir);

    setState(() {
      cachedValue = tempDirSize;
    });

  }

  double _getSize(FileSystemEntity file) {
    if (file is File) {
      return file.lengthSync() + 0.0;
    } else if (file is Directory) {
      double sum = 0;
      List<FileSystemEntity> children = file.listSync();
      for (FileSystemEntity child in children) {
        sum += _getSize(child);
      }
      return sum;
    }
    return 0.0;
  }

  void onClearCache() {
    tempDir.listSync().forEach((element) {element.deleteSync(recursive: true);});
    getCacheSize();
  }

  String getCacheFormat(double cacheValue) {
    const int kbSize = 1024;
    const int mbSize = kbSize * 1024;
    const int gbSize = mbSize * 1024;

    if(cachedValue == 0.00){
      return '${cacheValue.toStringAsFixed(1)} B';

    }
    if (cacheValue < kbSize) {
      return '${cacheValue.toStringAsFixed(2)} B';
    } else if (cacheValue < mbSize) {
      double valueInKB = cacheValue / kbSize;
      return '${valueInKB.toStringAsFixed(2)} KB';
    } else if (cacheValue < gbSize) {
      double valueInMB = cacheValue / mbSize;
      return '${valueInMB.toStringAsFixed(2)} MB';
    } else {
      double valueInGB = cacheValue / gbSize;
      return '${valueInGB.toStringAsFixed(2)} GB';
    }
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
