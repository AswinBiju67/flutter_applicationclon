import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';

class HelpchatScreen extends StatefulWidget {
  
   HelpchatScreen({super.key,required this.topic});
   String? topic;

  @override
  State<HelpchatScreen> createState() => _HelpchatScreenState();
}

class _HelpchatScreenState extends State<HelpchatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(backgroundColor: Colors.yellow.shade900,child: Icon(Icons.directions_bus,color: Colors.white,),),
      ),title: Text(widget.topic!),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             CircleAvatar(backgroundColor: colorconst.PRIMARY,child: Icon(Icons.directions_bus,color: Colors.white,),),
             Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Text("Hi,Welcome back! Please choose from \nthe brlow option:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              ),
             )
          ],),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
              height: 50,
           
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 10,right: 10),
                child: Text(widget.topic!,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
              ),
             )
          ],)
        ],),
      ),
    );
  }
}