import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/searchbus_screen/boarding_point.dart';
import 'package:flutter_applicationclon/searchbus_screen/dropping_point.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [ Padding(
          padding: const EdgeInsets.only(right: 130),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Selected boarding & dropping points"),
              Row(
                children: [
                  Text("Thodupuzha"),
                  Icon(Icons.arrow_right),
              Text("Bengaluru"),
                ],
              ),
              
            ],
          ),
        ),],
        bottom: TabBar(
        indicatorColor: Colors.red,
        unselectedLabelColor: Colors.grey,
        labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w600),
        labelColor: Colors.black,
        tabs: [
        Tab(text: "Boarding points\n  Thodupuzha",),
        Tab(text: "Dropping points \n Sriranga patna",),
       
       
      ],)
        ),
        body: TabBarView(
        children: [
     BoardingPoint(),
      DroppingPoint()

      

      ]),
      ),
    );
  }
}