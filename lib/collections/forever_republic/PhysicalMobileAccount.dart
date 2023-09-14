import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

class PhysicalMobileAccount extends StatelessWidget {
  const PhysicalMobileAccount({super.key});


  void clickOrder(){}
  void clickInbox(){}
  void clickRatingAndReview(){}
  void clickVouchers(){}
  void clickSavedItems(){}
  void clickRecentlyViewed(){}
  void clickRecentlySearched(){}


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child:  Column(
          children: [

            // Orders
            CustomCollectionCard(
              onClick: clickOrder,
              clickedColor: Colors.grey.withOpacity(0.3),
              text: "Orders",
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              gap: 24,
              startIcon: const Icon(Icons.storefront_sharp),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Inbox
            CustomCollectionCard(
              onClick: clickInbox,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Inbox",
              gap: 24,
              startIcon: const Icon(Icons.mail),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Rating & Reviews
            CustomCollectionCard(
              onClick: clickRatingAndReview,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Rating & Reviews",
              gap: 24,
              startIcon: const Icon(Icons.rate_review),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Vouchers
            CustomCollectionCard(
              onClick: clickVouchers,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Vouchers",
              gap: 24,
              startIcon: const Icon(Icons.card_giftcard_outlined),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Saved Items
            CustomCollectionCard(
              onClick: clickSavedItems,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Saved Items",
              gap: 24,
              startIcon: const Icon(Icons.favorite_border),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),

            // Recently Viewed
            CustomCollectionCard(
              onClick: clickRecentlyViewed,
              clickedColor: Colors.grey.withOpacity(0.3),
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              text: "Recently Viewed",
              gap: 24,
              startIcon: const Icon(Icons.history),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),


            // Recently Searched
            CustomCollectionCard(
              onClick: clickRecentlySearched,
              clickedColor: Colors.grey.withOpacity(0.3),
              text: "Recently Searched",
              textStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
              gap: 24,
              startIcon: const Icon(Icons.search),
              endIcon: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),





          ],
        ),
      ),
    );
  }
}
