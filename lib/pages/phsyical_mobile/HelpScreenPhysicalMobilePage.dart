import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';

import '../../collections/forever_republic/PhysicalMobileAbout.dart';
import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';
import '../../main.dart';
import 'CartScreenPhysicalMobilePage.dart';

class HelpScreenPhysicalMobilePage extends StatefulWidget {
  const HelpScreenPhysicalMobilePage({super.key});

  @override
  State<HelpScreenPhysicalMobilePage> createState() =>
      _HelpScreenPhysicalMobilePageState();
}

class _HelpScreenPhysicalMobilePageState
    extends State<HelpScreenPhysicalMobilePage> {
  void onTapSearch() {}
  void onTapLiveChat() {}

  void onTapCart() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => const CartScreenPhysicalMobilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Column(
        children: [
          // Help Title
          CustomShortSearchableTitleCard(
            pageTitle: "Help",
            onTapSearch: onTapSearch,
            onTapCart: onTapCart,
          ),

          //   Start Live Chat
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
            child: CustomOnClickContainer(
              onTap: onTapLiveChat,
              borderRadius: BorderRadius.circular(8),
                defaultColor: Colors.black.withOpacity(0.8),
                clickedColor: Colors.black.withOpacity(0.5),
                child: const Padding(
                  padding: EdgeInsets.all( 13),
                  child: Row(
                    children: [

                    //   Icon

                      Icon(Icons.message,color: Colors.white,),

                    //   Text

                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Start Live Chat",style: TextStyle(color: Colors.white),),
                        ],
                      ))


                    ],
                  ),
                )),
          ),


          // About FR
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Text(
                  "ABOUT FR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(getDarkGreyColor)),
                ),
              ],
            ),
          ),


          //   About Collections
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(child: PhysicalMobileAbout()),
              ],
            ),
          ),





        ],
      ),
    );
  }
}
