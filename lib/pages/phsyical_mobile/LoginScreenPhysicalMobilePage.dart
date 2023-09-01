import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../collections/forever_republic/ResourcePath.dart';
import '../../components/CustomCircularButton.dart';
import '../../components/CustomEditTextField.dart';
import '../../components/CustomPrimaryButton.dart';
import '../../components/CustomRoundImageCard.dart';

class LoginScreenPhysicalMobilePage extends StatefulWidget {
  const LoginScreenPhysicalMobilePage({super.key});

  @override
  State<LoginScreenPhysicalMobilePage> createState() =>
      _LoginScreenPhysicalMobilePageState();
}

class _LoginScreenPhysicalMobilePageState
    extends State<LoginScreenPhysicalMobilePage> {
  TextEditingController textEditingController = TextEditingController();

  void performBackPressed() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomCircularButton(
                          imagePath: null,
                          iconColor: Colors.black,
                          onPressed: performBackPressed,
                          icon: Icons.arrow_back,
                          gap: 8,
                          width: 40,
                          height: 40,
                          iconSize: 25,
                          defaultBackgroundColor: Colors.transparent,
                          colorImage: true,
                          clickedBackgroundColor: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomRoundImageCard(
                      imagePath: ResourcePath.foreverRepublicImage,
                      radius: 150,
                    ),
                    Text(
                      "Welcome to Forever Republic",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Type your email to log in or create an account.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomEditTextField(
                      controller: textEditingController,
                      hintText: "Enter your Email",
                      obscureText: false,
                      textSize: 16,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomPrimaryButton(
                      isEnabled: false,
                      buttonText: 'Continue',
                      buttonTextStyle: const TextStyle(color: Colors.white),
                      onTap: () {},
                    ),
                  ],
                ),


               // Bottom Part
                const SizedBox(height: 160,),
               const Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [

                   Text(
                     "For further support, you may visit the Help Center or contact our customer service team.",
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 13,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   SizedBox(
                     height: 16,
                   ),
                   Text(
                     "*** Forever Republic ***",
                     style: TextStyle(
                       color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize: 15,
                     ),
                   ),
                   SizedBox(
                     height: 8,
                   ),
                   SizedBox(
                     height: 16,
                   ),

                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
