
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhysicalMobileBalance extends StatefulWidget {
  const PhysicalMobileBalance({super.key});

  @override
  State<PhysicalMobileBalance> createState() => _PhysicalMobileBalanceState();
}

class _PhysicalMobileBalanceState extends State<PhysicalMobileBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        child: Row(
          children: [

            // Wallet
            Icon(Icons.account_balance_wallet,color: Colors.black,),

          //   Balance Status
          SizedBox(width: 5,),
          Flexible(child: Text("Sorry,your balance is not available",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),

          //   My account

          ],
        ),
      ),
    );
  }
}
