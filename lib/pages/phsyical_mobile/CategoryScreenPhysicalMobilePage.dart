

import 'package:flutter/cupertino.dart';

import '../../components/CustomFullSearchableTitleCard.dart';

class CategoryScreenPhysicalMobilePage extends StatefulWidget {
  const CategoryScreenPhysicalMobilePage({super.key});

  @override
  State<CategoryScreenPhysicalMobilePage> createState() => _CategoryScreenPhysicalMobilePageState();
}

class _CategoryScreenPhysicalMobilePageState extends State<CategoryScreenPhysicalMobilePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomFullSearchableTitleCard()

      ],
    );
  }
}
