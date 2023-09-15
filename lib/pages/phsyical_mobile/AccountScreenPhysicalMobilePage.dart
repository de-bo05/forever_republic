import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/collections/forever_republic/PhysicalMobileAccount.dart';
import 'package:forever_republic/collections/forever_republic/PhysicalMobileBalance.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';
import 'package:forever_republic/main.dart';
import 'package:forever_republic/pages/phsyical_mobile/CartScreenPhysicalMobilePage.dart';
import 'package:forever_republic/pages/phsyical_mobile/LoginScreenPhysicalMobilePage.dart';

import '../../collections/forever_republic/PhysicalMobileUserSetting.dart';
import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';
import '../../components/CustomUserTitleCard.dart';

class AccountScreenPhysicalMobilePage extends StatefulWidget {
  const AccountScreenPhysicalMobilePage({super.key});

  @override
  State<AccountScreenPhysicalMobilePage> createState() =>
      _AccountScreenPhysicalMobilePageState();
}

class _AccountScreenPhysicalMobilePageState
    extends State<AccountScreenPhysicalMobilePage> {


  void onTapLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => const LoginScreenPhysicalMobilePage()));
  }

  void onTapLogout() {}

  void onTapVerify() {}

  void clickLogOut(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Column(
        children: [
          // Account Title
          const CustomShortSearchableTitleCard(
            pageTitle: "Account",
          ),
          // Account Login
          CustomUserTitleCard(
            userFirstName: null,
            userEmail: null,
            onTapLogin: onTapLogin,
            onTapVerify: onTapVerify,
            verified: false,
          ),

          // Account Balance
          const Row(
            children: [
              Expanded(child: PhysicalMobileBalance()),
            ],
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [

                //   My Account
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        "MY FR ACCOUNT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(getDarkGreyColor)),
                      ),
                    ],
                  ),
                ),

                //   Account Collections
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(child: PhysicalMobileAccount()),
                    ],
                  ),
                ),

                //   My Settings
                const SizedBox(
                  height: 18,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        "MY SETTINGS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(getDarkGreyColor)),
                      ),
                    ],
                  ),
                ),

                //   Setting Collections
                const SizedBox(
                  height: 8,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(child: PhysicalMobileUserSetting()),
                    ],
                  ),
                ),



                //   Logout
                const SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(child: CustomOnClickContainer(
                          onTap: clickLogOut,
                          defaultColor: Colors.transparent,
                          clickedColor: Colors.grey.withOpacity(0.3),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                            child: Center(child: Text("LOGOUT",style: TextStyle(fontWeight: FontWeight.bold),)),
                          ))),
                    ],
                  ),
                ),

                //   Bottom
                const SizedBox(height: 16,)



              ],),
            ),
          )
          

        ],
      ),
    );
  }
}
