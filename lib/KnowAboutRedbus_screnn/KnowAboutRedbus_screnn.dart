import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class KnowaboutredbusScrenn extends StatefulWidget {
  const KnowaboutredbusScrenn({super.key});

  @override
  State<KnowaboutredbusScrenn> createState() => _KnowaboutredbusScrennState();
}

class _KnowaboutredbusScrennState extends State<KnowaboutredbusScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About redBus",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: Image.asset(
        fit: BoxFit.cover,
        imageconst.KNOW),
    );
  }
}