import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class RedbuswalletScreen extends StatelessWidget {
  const RedbuswalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("redBus wallet",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: Image.asset(
        fit: BoxFit.cover,
        imageconst.WALLET),
    );
  }
}