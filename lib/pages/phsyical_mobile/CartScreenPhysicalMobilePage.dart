

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/CustomCircularButton.dart';
import '../../components/CustomOnClickContainer.dart';

class CartScreenPhysicalMobilePage extends StatefulWidget {
  const CartScreenPhysicalMobilePage({super.key});

  @override
  State<CartScreenPhysicalMobilePage> createState() => _CartScreenPhysicalMobilePageState();
}

class _CartScreenPhysicalMobilePageState extends State<CartScreenPhysicalMobilePage> {


  void performBackPressed() {
    Navigator.pop(context);
  }

  void showMenu(){

  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Back Button

            Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16,right: 16,top: 6,bottom: 6),
                child: Row(children: [
                  CustomCircularButton(
                    imagePath: null,
                    iconColor: Colors.white,
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
                  const SizedBox(
                    width: 16,
                  ),
                  const Text(
                    "Cart",
                    textScaleFactor: 1,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomOnClickContainer(
                            padding: const EdgeInsets.all(4),
                            shape: BoxShape.circle,
                            onTap: showMenu,
                            defaultColor: Colors.transparent,
                            clickedColor: Colors.black.withOpacity(0.3),
                            child: const Icon(
                              Icons.more_horiz_outlined,
                              color: Colors.white,
                              size: 25,
                            ))
                      ],
                    ),
                  )

                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
