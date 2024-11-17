import 'package:flutter/material.dart';

class Dartrain1tab extends StatelessWidget {
  const Dartrain1tab({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                indicatorColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              labelColor: Colors.red,
              
                tabs: [
                Tab(text: "Upcoming",),
              Tab(text: "Completed"),
              Tab(text: "Cancelled",),
                    ]),
            ),
          ],
        ),
      )
    );
  }
}