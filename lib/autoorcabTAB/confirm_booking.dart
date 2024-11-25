import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/autoorcabTAB/autoorcabTAB.dart';
import 'package:flutter_applicationclon/autoorcabTAB/ride.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.network(
          height: 700,
          fit: BoxFit.cover,
          "https://www.google.com/maps/d/thumbnail?mid=1neXezJMoJV_YG0xO-0LEEKw2uiI"),
          Positioned(
            top: 50,
            left: 30,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Autoorcab() ,));
              },
              child: CircleAvatar(radius: 20,backgroundColor: Colors.white,child: Icon(Icons.arrow_back),)))
        ],
      ),
        bottomSheet: Container(
          height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select pickup location",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w800),),
                Text("Move map to pin the location",style: GoogleFonts.montserrat(fontSize: 15),),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade600)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.place_outlined),
                            SizedBox(width: 10,),
                            Text("12/325,Palluruthy,Kochi,Kerala\n682005,India",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(height: 20,),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Ride() ,));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                            ,color: colorconst.PRIMARY
                          ),
                          child: Center(child: Text("Confirm pickup",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),)),
                        ),
                      )
              ],
            ),
          ),
        ),
    );
  }
}