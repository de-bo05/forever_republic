

import 'package:flutter/cupertino.dart';

import '../../components/CustomFullSearchableTitleCard.dart';

class HomeScreenPhysicalMobilePage extends StatefulWidget {
  const HomeScreenPhysicalMobilePage({super.key});

  @override
  State<HomeScreenPhysicalMobilePage> createState() => _HomeScreenPhysicalMobilePageState();
}

class _HomeScreenPhysicalMobilePageState extends State<HomeScreenPhysicalMobilePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomFullSearchableTitleCard()

      ],
    );
  }
}
