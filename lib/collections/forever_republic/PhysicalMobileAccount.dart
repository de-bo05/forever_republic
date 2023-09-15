import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/components/CustomCollectionCard.dart';
import 'package:hive/hive.dart';

import '../../pages/phsyical_mobile/InboxScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/OrderScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/RatingAndReviewScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/RecentlySearchedScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/RecentlyViewedScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/SavedItemScreenPhysicalMobilePage.dart';
import '../../pages/phsyical_mobile/VoucherScreenPhysicalMobilePage.dart';

class PhysicalMobileAccount extends StatelessWidget {
  const PhysicalMobileAccount({super.key});


  @override
  Widget build(BuildContext context) {

    void clickOrder(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const OrderScreenPhysicalMobilePage()));
    }
    void clickInbox(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const InboxScreenPhysicalMobilePage()));
    }
    void clickRatingAndReview(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const RatingAndReviewScreenPhysicalMobilePage()));
    }
    void clickVouchers(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const VoucherScreenPhysicalMobilePage()));
    }
    void clickSavedItems(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const SavedItemScreenPhysicalMobilePage()));
    }
    void clickRecentlyViewed(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const RecentlyViewedScreenPhysicalMobilePage()));
    }
    void clickRecentlySearched(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => const RecentlySearchedScreenPhysicalMobilePage()));
    }


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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
              endWidget: const Icon(
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
