import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/booking_screen/booking_screen.dart';
import 'package:flutter_applicationclon/gobal/booking.dart';
import 'package:flutter_applicationclon/help_screen/help_issues_screen.dart';
import 'package:flutter_applicationclon/help_screen/helpchat_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Red:Buddy",style: GoogleFonts.montserrat(
        color: colorconst.PRIMARY,fontWeight: FontWeight.bold),),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(Icons.language_outlined),
        ),Text("English",style: GoogleFonts.montserrat(),)],
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HelpIssuesScreen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.chat),
                      SizedBox(width: 10,),
                      Text("View all issues",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 200,),
                      Icon(Icons.arrow_right,size: 25,)
                    ],
                  ),),
              ),
                 SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookingScreen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.chat),
                      SizedBox(width: 10,),
                      Text("View all booking",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 175,),
                      Icon(Icons.arrow_right,size: 25,)
                    ],
                  ),),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 20),
                  child: Row(
                    children: [
                      Text("FAQs",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                      SizedBox(width: 15,),
                      Text("(Select a Help Topic)",style: GoogleFonts.montserrat(fontSize: 17,))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_bus),
                             Text("Bus Tickets",style: GoogleFonts.montserrat(fontSize: 17,),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_train),
                             Text("Train Tickets",style: GoogleFonts.montserrat(fontSize: 17,),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_train),
                             Text("Metro",style: GoogleFonts.montserrat(fontSize: 17,),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.directions_car),
                             Text("Auto Rides",style: GoogleFonts.montserrat(fontSize: 17,),)
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Other topics",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 480,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "Technical Issues"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.settings,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Technical Issues",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Need some technical help?",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 90,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "redBus Refferral Help"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.settings,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("redBus Refferral Help",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Need help with redBus...",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 85,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "New bus booking help"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.directions_bus_filled_outlined,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("New bus booking help",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Bus availablility/ chid fare...",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 75,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "Offer"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Offer",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Need help with offer?",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 140,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "Metro Tickets"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Metro Tickets",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Need help with offer?",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 140,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => HelpchatScreen(topic: "Red Bus wallet Help"),));
                        },
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.black))
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.wallet,color: colorconst.PRIMARY,),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Red Bus wallet Help",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                                    Text("Need some technical help?",style: GoogleFonts.montserrat(fontSize: 17,)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 90,),
                              Icon(Icons.arrow_right,size: 25,)
                            ],
                          )),
                      ),
                    ],
                  ),
                )
            ,SizedBox(height: 20,),
            ],
          ),
        ),
    );
  }
}