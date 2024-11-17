import 'package:flutter/material.dart';

class Auocartab extends StatelessWidget {
  const Auocartab({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Container(
          color: Colors.white,
          child: TabBar(
            indicatorColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          labelColor: Colors.red,
            tabs: [
            Tab(text: "UPCOMING",),
          Tab(text: "EXPIRED"),
          Tab(text: "CANCELLED",),
                ]),
        ),
      )
    );
  }
}