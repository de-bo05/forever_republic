
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forever_republic/main.dart';

import '../../data/NavigationData.dart';
import 'AccountScreenPhysicalMobilePage.dart';
import 'CategoryScreenPhysicalMobilePage.dart';
import 'HelpScreenPhysicalMobilePage.dart';
import 'HomeScreenPhysicalMobilePage.dart';

class PrimaryScreenPhysicalMobilePage extends StatefulWidget {
  const PrimaryScreenPhysicalMobilePage({Key? key}) : super(key: key);

  @override
  State<PrimaryScreenPhysicalMobilePage> createState() => _PrimaryScreenPhysicalMobilePageState();
}

class _PrimaryScreenPhysicalMobilePageState extends State<PrimaryScreenPhysicalMobilePage> {

  int currentIndex = 0;


  List<NavigationData> get navigationBars => [
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"), const HomeScreenPhysicalMobilePage()),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined),label: "Category"), const CategoryScreenPhysicalMobilePage()),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Account"), const AccountScreenPhysicalMobilePage()),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.help_outline_outlined),label: "Help"), const HelpScreenPhysicalMobilePage())
  ];


  void navigateBar(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:  Center(
          child: Column(
            children: [
              Expanded(
                child: navigationBars.map((barItem) => Center(child: barItem.bottomNavigationBarPage)).toList()[currentIndex]
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(getDarkGreyColor),
          currentIndex: currentIndex,
          onTap:navigateBar,
          items: navigationBars.map((barItem) => barItem.bottomNavigationBarItem).toList(),
        ),
      ),
    );
  }
}
