import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class PassengersScreen extends StatelessWidget {
  const PassengersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Passengers"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.green.shade100,
                      child: Icon(Icons.person_2_outlined),
                    ),
                    SizedBox(width: 10,),
                    Text("User",style: GoogleFonts.montserrat(fontSize: 17),)
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
            Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorconst.PRIMARY,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person_add_alt_outlined,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("Add new passenger",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              )),
            ),
          )
          ],
        ),
      ),
    );
  }
}