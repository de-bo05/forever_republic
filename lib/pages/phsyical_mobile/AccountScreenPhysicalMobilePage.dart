

import 'package:flutter/cupertino.dart';

import '../../components/CustomFullSearchableTitleCard.dart';
import '../../components/CustomShortSearchableTitleCard.dart';
import '../../components/CustomUserTitleCard.dart';

class AccountScreenPhysicalMobilePage extends StatefulWidget {
  const AccountScreenPhysicalMobilePage({super.key});

  @override
  State<AccountScreenPhysicalMobilePage> createState() => _AccountScreenPhysicalMobilePageState();
}

class _AccountScreenPhysicalMobilePageState extends State<AccountScreenPhysicalMobilePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        CustomShortSearchableTitleCard(),
        CustomUserTitleCard()

      ],
    );
  }
}
