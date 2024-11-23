import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferralsScreen extends StatelessWidget {
  const ReferralsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Referrals",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text("FAQ",style: GoogleFonts.montserrat(color: Colors.blue.shade700,decoration: TextDecoration.underline,fontWeight: FontWeight.bold,fontSize: 17),),
      ),
],),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              height: 200,
              imageconst.pq),
            Text("Not able to load this page",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
            Text("Due to some technical error we are not able to load this page",style: GoogleFonts.montserrat(fontSize: 15),textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            Container(
              width: 200,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colorconst.PRIMARY
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.refresh,color: Colors.white,),
                SizedBox(width: 10,),
                Text("Refresh page",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),)
              ],),
            ),)
          ],
        ),
      ),
    );
  }
}