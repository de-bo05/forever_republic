
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/NavigationData.dart';

class PrimaryScreenPhysicalMobilePage extends StatefulWidget {
  const PrimaryScreenPhysicalMobilePage({Key? key}) : super(key: key);

  @override
  State<PrimaryScreenPhysicalMobilePage> createState() => _PrimaryScreenPhysicalMobilePageState();
}

class _PrimaryScreenPhysicalMobilePageState extends State<PrimaryScreenPhysicalMobilePage> {

  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();


  }



  Widget getText( String text){
    return Text("Page $currentIndex",style: const TextStyle(color: Colors.black),);}


  List<NavigationData> get navigationBars => [
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"), getText("Page $currentIndex")),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.list_alt_outlined),label: "Category"), getText("Page $currentIndex")),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Account"), getText("Page $currentIndex")),
    NavigationData(const BottomNavigationBarItem(icon: Icon(Icons.help),label: "Help"), getText("Page $currentIndex"))
  ];


  void navigateBar(int index){
    setState(() {
      currentIndex = index;
    });
    pageController.jumpToPage(index);
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: PageView(
          controller: pageController,
          onPageChanged: navigateBar,
          children: navigationBars.map((barItem) => barItem.bottomNavigationBarPage).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap:navigateBar,
        items: navigationBars.map((barItem) => barItem.bottomNavigationBarItem).toList(),
      ),
    );
  }
}