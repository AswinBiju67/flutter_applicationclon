import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Csaet extends StatelessWidget {
  const Csaet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("22226 Csmt Vandebharat",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.brown.shade300,width: 2),
              color: Colors.amber.shade100
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("AC Chair Car (CC)",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                  Text("TQWL 10",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                        
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
           Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("07:55 AM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Pune Jn(PUNE)")
                          ],
                        ),
                        Text("03h 20m"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("11:15 PM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Lokmanyatilak (LTT)")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("Boaeding Station"),
                    SizedBox(height: 10,),
                    Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Pune Jn (Pune)",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                        Icon(Icons.arrow_drop_down)
                      ],),
                    ),),
                    SizedBox(height: 10,),
                    Text("Boaeding time: Sat,23 Nov.09:20 AM"),
                    SizedBox(height: 10,),
                     Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Colors.blue.shade100
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("You searched for trains From PUNE to MMCT,but you arer booking this train from PUNE to CSMT",style: GoogleFonts.montserrat(),),
                    ),),
                    SizedBox(height: 10,),
                    Text("IRCTC User name",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                    Text("Done",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.green),),
                    SizedBox(height: 10,),
                     Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Aswin",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                        Icon(Icons.circle,color: Colors.green,),
                       
                      ],),
                    ),),
                     SizedBox(height: 10,),
                        Text("IRCTC password is required to complete the booking.if you nees a new password, required for a new one new",style: GoogleFonts.montserrat(fontSize: 17),)
                       , SizedBox(height: 10,),
                        Text("Forgot password",style: GoogleFonts.montserrat(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                         SizedBox(height: 10,),
                        Text("Create a new IRCTC account",style: GoogleFonts.montserrat(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.bold),),
                        SizedBox(height: 25,),
                        Text("Passengers",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("At least one adult required"),
                            Text("0 of 4")
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blueAccent.shade700
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person_add_alt_1_outlined,color: Colors.white,),
                                    SizedBox(width: 5,),
                                    Text("Add Passenger",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.white),),
                                  ],
                                )),
                              ),
                            ),
                            SizedBox(height: 25,),
                        Text("Contact Details",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),

        ],
      ),
    ),
    );
  }
}