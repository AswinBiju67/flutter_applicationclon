import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/searchbus_screen/boarding_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(actions: [ Padding(
        padding: const EdgeInsets.only(right: 150),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Text("Select Seats",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
               Row(
                children: [
                  Text("Thodupuzha",style: GoogleFonts.montserrat(),),
                   Icon(Icons.arrow_right),
              Text("Bengaluru",style: GoogleFonts.montserrat(),)
                ],
              ),
            ],
          ),
      ),],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: (context) => Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 seat selected",style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),),
                            Text("855",style: GoogleFonts.montserrat(fontWeight: FontWeight.w600),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BoardingScreen(),));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: colorconst.PRIMARY
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Center(child: Text("Proceed",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.white),)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),);
              },
              child: Image.asset(imageconst.BUSTIC)),
            SizedBox(height: 10,),
            Text("Know your seat types",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
            Image.asset(imageconst.BUSset1),
            Image.asset(imageconst.BUSTI2),
            
          ],
        ),
      ),
    );
  }
  
}