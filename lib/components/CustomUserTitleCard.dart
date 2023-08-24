import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';
import 'package:forever_republic/main.dart';

class CustomUserTitleCard extends StatelessWidget {
  final String? userFirstName;
  final String? userEmail;
  final bool verified;
  final Function()? onTapLogin;
  final Function()? onTapVerify;
  const CustomUserTitleCard({super.key, this.userFirstName, this.userEmail, this.onTapLogin, this.onTapVerify, required this.verified});

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

             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //   Welcome

                Text(
                  userFirstName != null ? "Welcome $userFirstName" : "Welcome!",
                  style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
                ),
                const SizedBox(
                  height: 4,
                ),
                 Text(
                  userEmail != null ? (userEmail ?? ""):  "Enter your account",
                  style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 13),
                ),
              ],
            ),

            //  Search - Cart

            Row(
              children: [
                userEmail == null ? CustomOnClickContainer(
                    onTap: onTapLogin ,
                    borderRadius: BorderRadius.circular(8),
                    defaultColor: Colors.black,
                    clickedColor: Colors.black.withOpacity(0.3),
                    child:  const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text("LOGIN" ,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                    )) : const SizedBox(),

                verified && userEmail != null || userEmail == null ? const SizedBox() : CustomOnClickContainer(
                    onTap:  onTapVerify,
                    borderRadius: BorderRadius.circular(8),
                    defaultColor: Colors.black,
                    clickedColor: Colors.black.withOpacity(0.3),
                    child:  const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text("VERIFY" ,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
