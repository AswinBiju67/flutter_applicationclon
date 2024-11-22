import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/TrainTAB/seattab.dart';

class TrainBottomsreen extends StatefulWidget {
  const TrainBottomsreen({super.key});

  @override
  State<TrainBottomsreen> createState() => _TrainBottomsreenState();
}

class _TrainBottomsreenState extends State<TrainBottomsreen> {
  int selectedindex=0;
  
   static const List screen=[
    Seattab(),
    Seattab(),
    Seattab(),
    Seattab(),
    Seattab(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screen[selectedindex],),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
      onTap: (value) {
        print(value);
        selectedindex=value;
        setState(() {

        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey.shade800,
        items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          label: "Quota"),
          BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          label: "Sort"),
          BottomNavigationBarItem(
          icon: Icon(Icons.directions_train),
          label: "Available"),
          BottomNavigationBarItem(
          icon: Icon(Icons.wind_power),
          label: "AC"),
          BottomNavigationBarItem(
          icon: Icon(Icons.filter_alt),
          label: "Filter"),
          
        ],
      ),
    );
  }
}