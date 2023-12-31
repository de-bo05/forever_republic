import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFullSearchableTitleCard extends StatelessWidget {
  final Function()? onTapSearch;
  final Function()? onTapCart;
  const CustomFullSearchableTitleCard({super.key, this.onTapSearch, this.onTapCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 6, bottom: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Click Search
            Expanded(
              child: GestureDetector(
                onTap: onTapSearch,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                    child: Row(
                      children: [
                        // Search Display Icon

                        Icon(
                          Icons.search_rounded,
                          size: 25,
                          color: Colors.black.withOpacity(0.7),
                        ),

                        // Search Display Text
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search Store",
                          style: TextStyle(
                              color:
                                   Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //   Cart
            IconButton(
                onPressed: onTapCart,
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
