import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/main.dart';

class CustomShortSearchableTitleCard extends StatelessWidget {
  final String pageTitle;
  final Function()? onTapSearch;
  final Function()? onTapCart;

  const CustomShortSearchableTitleCard({super.key, required this.pageTitle, this.onTapSearch, this.onTapCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 6, bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Page Title

             Expanded(
                child: Text(
              pageTitle,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            )),

            //  Search - Cart
            Row(
              children: [
                //  Search
                IconButton(
                    onPressed: onTapSearch,
                    icon: const Icon(
                      Icons.search_rounded,
                      size: 25,
                      color: Colors.white,
                    )),
                //  Cart
                const SizedBox(width: 4,),
                IconButton(
                    onPressed: onTapCart,
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
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
