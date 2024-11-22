import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({
    super.key,
  });

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    String from="";
    String to="";
    return SizedBox(height: 165,
    width: double.infinity,
    child: Stack(children: [
       Positioned(
          top: 30,
          right: 50,
          child: CircleAvatar(radius: 20,backgroundColor: Colors.black,child: Icon(Icons.swap_vert,color: Colors.white,),)),
      Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black)
    ),child: Column(
      children: [
        Stack(children: [
          Column(
            children: [
              TextField(decoration: InputDecoration(
                        hintText:  "From",hintStyle: GoogleFonts.montserrat(fontSize: 21),
                        prefixIcon: Icon(Icons.directions_bus),
                    ),onChanged: (value) {
                      from=value;
                      setState(() {
                        
                      });
                    },), 
                    
                    TextField(decoration: InputDecoration(
                  hintText:  "TO",hintStyle: GoogleFonts.montserrat(fontSize: 21),
                  prefixIcon: Icon(Icons.directions_bus)
              ),onChanged: (value) {
                to=value;
                setState(() {
                  
                });}),
            ],
          ),],
        ),
             
        Container(
          height: 66,
          width: double.infinity,
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.calendar_month_outlined,size: 30,),
                SizedBox(width: 15,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Date of Journey",style: GoogleFonts.montserrat(),),
                      Text("Mon, 28 Oct",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),)
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade200
                ),
                child: Center(child: Text("Today",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),)),),
                SizedBox(width: 15,),
                Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red.shade200
                ),
                child: Center(child: Text("Tomorrow",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),)),)
              ],
            ),
          ),
        ), 
       
      ],
    ),)
    ],),);
  }
}