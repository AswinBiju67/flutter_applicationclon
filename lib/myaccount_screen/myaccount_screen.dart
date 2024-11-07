import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({super.key});

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image:AssetImage(imageconst.MYUSER))
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),
                      Text("+91735653XXXX",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("Member since Oct 2024",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28,right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: Colors.grey))
                      ),
                    child: Column(
                      children: [
                        Text("0",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 21),),
                        Text("Total trips",style: GoogleFonts.montserrat(fontSize: 15),),
                      ],
                    ),),
                     Container(
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: Colors.grey))
                      ),
                    child: Column(
                      children: [
                        Text("0 km",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 21),),
                        Text("Travelled",style: GoogleFonts.montserrat(fontSize: 15),),
                      ],
                    ),),
                     Container(
                      width: 130,
                      decoration: BoxDecoration(
                        
                      ),
                    child: Column(
                      children: [
                        Text("0 kg",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 21),),
                        Text("Carbon saving",style: GoogleFonts.montserrat(fontSize: 15),),
                      ],
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My details",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.more_horiz_rounded,),
                                SizedBox(width: 20,),
                               Text("Bookings",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 200,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.person,),
                                SizedBox(width: 20,),
                               Text("Personal Information",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 70,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.person,),
                                SizedBox(width: 20,),
                               Text("Passengerss",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 170,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 30,),
                      Text("Payments",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.wallet,),
                                SizedBox(width: 20,),
                               Text("redBus Wallet",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 150,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.money,),
                                SizedBox(width: 20,),
                               Text("Payment methods",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 100,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.file_copy,),
                                SizedBox(width: 20,),
                               Text("GST details",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 180,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 30,),
                      Text("More",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.tag,),
                                SizedBox(width: 20,),
                               Text("Offers",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 240,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.share,),
                                SizedBox(width: 20,),
                               Text("Referrals",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 210,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.video_chat,),
                                SizedBox(width: 20,),
                               Text("Trending videos",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 130,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.info_outline,),
                                SizedBox(width: 20,),
                               Text("Know about redBus",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 90,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.star_border,),
                                SizedBox(width: 20,),
                               Text("Rate app",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 210,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.help_outline,),
                                SizedBox(width: 20,),
                               Text("HELP",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 250,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.settings,),
                                SizedBox(width: 20,),
                               Text("Account settings",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 120,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      SizedBox(height: 30,),
                      Text("Perferences",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: Row(children: [
                       Image.asset(
                        height: 30,
                        imageconst.IFLAG),
                              SizedBox(width: 20,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Country",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                 Text("India",style: GoogleFonts.montserrat(fontSize: 17,),),
                               ],
                             ),
                              SizedBox(width: 210,),
                              Icon(Icons.arrow_right,size: 25,)
                    ],),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: Row(children: [
                       Icon(Icons.money
                       ,),
                              SizedBox(width: 20,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Currency",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                 Text("INR",style: GoogleFonts.montserrat(fontSize: 17,),),
                               ],
                             ),
                              SizedBox(width: 205,),
                              Icon(Icons.arrow_right,size: 25,)
                    ],),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: Row(children: [
                       Text("Aa",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Language",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                 Text("English",style: GoogleFonts.montserrat(fontSize: 17,),),
                               ],
                             ),
                              SizedBox(width: 188,),
                              Icon(Icons.arrow_right,size: 25,)
                    ],),),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child: Row(children: [
                         Icon(Icons.notifications,),
                                SizedBox(width: 20,),
                               Text("Notification",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                SizedBox(width: 173,),
                                Icon(Icons.arrow_right,size: 25,)
                      ],),),
                      Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: Row(children: [
                       Image.asset(
                        height: 30,
                        imageconst.WOMEN),
                              SizedBox(width: 20,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("Booking for women",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                 Text("No",style: GoogleFonts.montserrat(fontSize: 17,),),
                               ],
                             ),
                              SizedBox(width: 85,),
                              Icon(Icons.arrow_right,size: 25,)
                    ],),
                  ),
                  SizedBox(height: 60,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}