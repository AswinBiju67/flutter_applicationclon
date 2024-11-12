import 'package:flutter/material.dart';
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
        title: Text("Bookings",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
      bottom: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: Colors.red,
        unselectedLabelColor: Colors.grey,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        labelColor: Colors.red,
        tabs: [
        Tab(text: "Bus Tickets",icon: Icon(Icons.directions_bus),),
        Tab(text: "Train Tickets",icon: Icon(Icons.directions_train),),
        Tab(text: "Cab / Auto",icon: Icon(Icons.directions_car),),
        Tab(text: "Metro Tickets",icon: Icon(Icons.directions_train),),
       
      ],
      ),),
      body: TabBarView(
        children: [
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        
      ]),
    ));
  }
}