import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/autoorcabTAB/autoorcabTAB.dart';
import 'package:flutter_applicationclon/autoorcabTAB/confirm_booking.dart';
import 'package:flutter_applicationclon/bottmnaviscreen/bottmnaviscreen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Ride extends StatelessWidget {
  const Ride({super.key});

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmBooking() ,));
              },
              child: CircleAvatar(radius: 20,backgroundColor: Colors.white,child: Icon(Icons.arrow_back),)))
        ],
      ),
        bottomSheet: Container(
          height:370,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15))
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Choose your ride",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w800),),
                Text("18.2 km . 34 mins",style: GoogleFonts.montserrat(fontSize: 15),),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: colorconst.PRIMARY)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                       Image.network(
                         height: 50,
                         "https://th.bing.com/th/id/R.bd69e7defb78173bb52171f8b2899ac7?rik=IfU%2fOzGpozeZEA&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f5%2fAuto-Rickshaw-PNG-Photo.png&ehk=hSlkyCnQ44oMOFQbhJIfNpUCai%2bjhfiBAM%2fJgii5BMo%3d&risl=&pid=ImgRaw&r=0"),
                         SizedBox(height: 10,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Auto",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                                 Text("8 min away . 3 Seats",style: GoogleFonts.montserrat(),),
                               ],
                             ),
                             Text("₹440 - 470",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                           ],
                         ),
                         SizedBox(height: 10,),
                         Divider(color: Colors.grey.shade500,),
                         SizedBox(height: 10,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Ride preference",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700),),
                             Icon(Icons.arrow_drop_down_outlined)
                           ],
                         ),

                      ],
                    ),
                  ),
                ),
                 SizedBox(height: 20,),
                      InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => Bottmnaviscreen(),), (route) => false,);
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