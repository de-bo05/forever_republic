import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomOnClickContainer.dart';
import 'package:forever_republic/main.dart';

class CustomUserTitleCard extends StatelessWidget {
  final String? userFirstName;
  final String? userEmail;
  final Function()? onTapLogin;
  final Function()? onTapLogout;
  const CustomUserTitleCard({super.key, this.userFirstName, this.userEmail, this.onTapLogin, this.onTapLogout});

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

            CustomOnClickContainer(
              onTap: userEmail == null ? onTapLogin : onTapLogout,
                borderRadius: BorderRadius.circular(8),
                defaultColor: Colors.black,
                clickedColor: Colors.black.withOpacity(0.3),
                child:  Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(userEmail == null ?  "LOGIN" : "LOGOUT",style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                ))
          ],
        ),
      ),
    );
  }
}
