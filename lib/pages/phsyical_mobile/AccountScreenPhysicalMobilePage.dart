

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/pages/phsyical_mobile/CartScreenPhysicalMobilePage.dart';
import 'package:forever_republic/pages/phsyical_mobile/LoginScreenPhysicalMobilePage.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';
import '../../components/CustomUserTitleCard.dart';

class AccountScreenPhysicalMobilePage extends StatefulWidget {
  const AccountScreenPhysicalMobilePage({super.key});

  @override
  State<AccountScreenPhysicalMobilePage> createState() => _AccountScreenPhysicalMobilePageState();
}

class _AccountScreenPhysicalMobilePageState extends State<AccountScreenPhysicalMobilePage> {


  void onTapSearch(){

  }
  void onTapCart(){
   Navigator.push(context, MaterialPageRoute(builder: (builder)=> const CartScreenPhysicalMobilePage()));
  }
  void onTapLogin(){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=> const LoginScreenPhysicalMobilePage()));
  }
  void onTapLogout(){

  }
  void onTapVerify(){

  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        CustomShortSearchableTitleCard(pageTitle: "Account",onTapSearch: onTapSearch,onTapCart: onTapCart,),
         CustomUserTitleCard(userFirstName: null,userEmail: null,onTapLogin: onTapLogin,onTapVerify: onTapVerify,verified: false,)

      ],
    );
  }
}
