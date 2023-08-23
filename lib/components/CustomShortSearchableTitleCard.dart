import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/main.dart';

class CustomShortSearchableTitleCard extends StatelessWidget {
  const CustomShortSearchableTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 6, bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Page Title

            const Expanded(
                child: Text(
              "Account",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),

            //  Search - Cart
            Row(
              children: [
                //  Search
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.white,
                    )),
                //  Cart
                SizedBox(width: 4,),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 25,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
