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
        padding: const EdgeInsets.only(left: 8, top: 16, bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Welcome Title

            const Expanded(
              flex: 2,
              child: Column(
                children: [
                  //   Welcome

                  Flexible(
                      child: Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  )),
                  SizedBox(
                    height: 4,
                  ),
                  Flexible(
                      child: Text(
                    "Enter your account",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  )),
                ],
              ),
            ),

            //  Search - Cart

            CustomOnClickContainer(
              onTap: (){

              },
                defaultColor: Colors.black,
                clickedColor: Colors.black.withOpacity(0.8),
                child: const Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),))
          ],
        ),
      ),
    );
  }
}
