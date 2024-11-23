import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offer",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),),
      body:  Center(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("Currently No offers available",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 25),),
      )),
    );
  }
}