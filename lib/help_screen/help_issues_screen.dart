import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';

class HelpIssuesScreen extends StatefulWidget {
  const HelpIssuesScreen({super.key});

  @override
  State<HelpIssuesScreen> createState() => _HelpIssuesScreenState();
}

class _HelpIssuesScreenState extends State<HelpIssuesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("red:Buddy",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),backgroundColor: colorconst.PRIMARY,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: .1)
            ),
            child: Center(child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Text("NO previos cases found. Raise a new complaint for assistance",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
            )),),
          ],
        ),
      ),
      ),
    );
  }
}