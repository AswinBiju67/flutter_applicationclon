import 'package:flutter/material.dart';

class RedbusTab extends StatefulWidget {
  const RedbusTab({super.key});

  @override
  State<RedbusTab> createState() => _RedbusTabState();
}

class _RedbusTabState extends State<RedbusTab> {
  int indexs=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("Last synced today at 00:00 PM",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10,),
        Text("Pull to refresh"),
        Center(
          child: DefaultTabController(
            initialIndex: 0,
            length: 2,
          child: Container(
            color: Colors.grey.shade300,
            child: TabBar(
            indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    labelColor: Colors.red,
              tabs: [
              Tab(text: "COMPLETED",),
                Tab(text: "CANCELLED",),
            ]),
          ),
          ),
        ),
        SizedBox(height: 20,),
        Text("Show Bookings")
      ],
    );
  }
}