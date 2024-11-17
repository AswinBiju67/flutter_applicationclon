import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/booking_screen/auocartab.dart';
import 'package:flutter_applicationclon/booking_screen/dartrain1tab.dart';
import 'package:flutter_applicationclon/booking_screen/metro1tab.dart';
import 'package:flutter_applicationclon/booking_screen/redBus_tab.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bookings",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
        
      bottom: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: Colors.red,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        labelColor: Colors.red,
        tabs: [
        Tab(text: "redBus",icon: Icon(Icons.directions_bus),),
        Tab(text: "redRail",icon: Icon(Icons.directions_train),),
        Tab(text: "Cab / Auto rides",icon: Icon(Icons.directions_car),),
        Tab(text: "Metro",icon: Icon(Icons.directions_train),),
       
      ],
      ),),
      body: TabBarView(
        children: [
        RedbusTab(),
        Dartrain1tab(),
        Auocartab(),
        Metro1tab(),
        
        
      ]),
    ));
  }
}