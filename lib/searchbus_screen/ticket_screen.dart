import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/images.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(imageconst.BUSTIC),
            SizedBox(height: 10,),
            Text("Know your seat types",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
            Image.asset(imageconst.BUSset1),
            Image.asset(imageconst.BUSTI2),
          ],
        ),
      ),
    );
  }
}