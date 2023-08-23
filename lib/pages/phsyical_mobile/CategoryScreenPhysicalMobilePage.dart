

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import 'CartScreenPhysicalMobilePage.dart';

class CategoryScreenPhysicalMobilePage extends StatefulWidget {
  const CategoryScreenPhysicalMobilePage({super.key});

  @override
  State<CategoryScreenPhysicalMobilePage> createState() => _CategoryScreenPhysicalMobilePageState();
}

class _CategoryScreenPhysicalMobilePageState extends State<CategoryScreenPhysicalMobilePage> {

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
