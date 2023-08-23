

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import 'CartScreenPhysicalMobilePage.dart';

class HomeScreenPhysicalMobilePage extends StatefulWidget {
  const HomeScreenPhysicalMobilePage({super.key});

  @override
  State<HomeScreenPhysicalMobilePage> createState() => _HomeScreenPhysicalMobilePageState();
}

class _HomeScreenPhysicalMobilePageState extends State<HomeScreenPhysicalMobilePage> {

  void onTapSearch(){

  }
  void onTapCart(){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=> const CartScreenPhysicalMobilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        CustomFullSearchableTitleCard(onTapCart: onTapCart,onTapSearch: onTapSearch,)

      ],
    );
  }
}
