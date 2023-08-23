

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';
import 'CartScreenPhysicalMobilePage.dart';

class HelpScreenPhysicalMobilePage extends StatefulWidget {
  const HelpScreenPhysicalMobilePage({super.key});

  @override
  State<HelpScreenPhysicalMobilePage> createState() => _HelpScreenPhysicalMobilePageState();
}

class _HelpScreenPhysicalMobilePageState extends State<HelpScreenPhysicalMobilePage> {


  void onTapSearch(){

  }
  void onTapCart(){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=> const CartScreenPhysicalMobilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        CustomShortSearchableTitleCard(pageTitle: "Help",onTapSearch: onTapSearch,onTapCart: onTapCart,),

      ],
    );
  }
}
