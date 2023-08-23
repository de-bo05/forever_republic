import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forever_republic/components/CustomEditTextField.dart';
import 'package:forever_republic/main.dart';

class CustomFullSearchableTitleCard extends StatelessWidget {
  const CustomFullSearchableTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [


          //  Click Search
          Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child: const Row(
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                  child: Text("Search on Forever Republic",style: TextStyle(color: Color(getDarkGreyColor)),),
                )
              ],
            ),
          ),




        ],
      ),
    );
  }
}
