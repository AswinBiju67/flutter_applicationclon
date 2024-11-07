import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/MetroTAB/MetroTAB.dart';
import 'package:flutter_applicationclon/TrainTAB/TrainTAB.dart';
import 'package:flutter_applicationclon/autoorcabTAB/autoorcabTAB.dart';
import 'package:flutter_applicationclon/home_tab/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4, child: Scaffold(
      appBar: AppBar(
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
        HomeTab(),
        Traintab(),
        Autoorcab(),
        Metrotab()
        
      ]),
    ));
  }
}