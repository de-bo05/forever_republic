
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/phsyical_mobile/CartScreenPhysicalMobilePage.dart';

class SearchAndCartIconCollection extends StatefulWidget {

  const SearchAndCartIconCollection({super.key});

  @override
  State<SearchAndCartIconCollection> createState() => _SearchAndCartIconCollectionState();
}

class _SearchAndCartIconCollectionState extends State<SearchAndCartIconCollection> {

  void onTapSearch() {}

  void onTapCart() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (builder) => const CartScreenPhysicalMobilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
      );
  }
}
