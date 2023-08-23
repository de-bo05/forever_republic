

import 'package:flutter/cupertino.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';

class HelpScreenPhysicalMobilePage extends StatefulWidget {
  const HelpScreenPhysicalMobilePage({super.key});

  @override
  State<HelpScreenPhysicalMobilePage> createState() => _HelpScreenPhysicalMobilePageState();
}

class _HelpScreenPhysicalMobilePageState extends State<HelpScreenPhysicalMobilePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomShortSearchableTitleCard(),

      ],
    );
  }
}
