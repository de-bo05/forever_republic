
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryScreenPage extends StatefulWidget {
  const PrimaryScreenPage({Key? key}) : super(key: key);

  @override
  State<PrimaryScreenPage> createState() => _PrimaryScreenPageState();
}

class _PrimaryScreenPageState extends State<PrimaryScreenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Ajibewa Iyiola"),
      ),
    );
  }
}
