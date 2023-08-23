import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';
import 'package:forever_republic/main.dart';

class CustomUserTitleCard extends StatelessWidget {
  const CustomUserTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, bottom: 10,right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Welcome Title

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //   Welcome

                Text(
                  "Welcome!",
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Enter your account",
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
                ),
              ],
            ),

            //  Search - Cart

            CustomOnClickContainer(
              onTap: (){

              },
                borderRadius: BorderRadius.circular(8),
                defaultColor: Colors.black,
                clickedColor: Colors.black.withOpacity(0.3),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                ))
          ],
        ),
      ),
    );
  }
}
