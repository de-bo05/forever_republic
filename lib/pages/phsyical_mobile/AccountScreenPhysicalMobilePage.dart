

import 'package:flutter/cupertino.dart';

import '../../components/CustomFullSearchableTitleCard.dart';

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

        CustomFullSearchableTitleCard()

      ],
    );
  }
}
