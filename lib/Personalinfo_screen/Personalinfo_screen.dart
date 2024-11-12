import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalinfoScreen extends StatefulWidget {
  const PersonalinfoScreen({super.key});

  @override
  State<PersonalinfoScreen> createState() => _PersonalinfoScreenState();
}

class _PersonalinfoScreenState extends State<PersonalinfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal information",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
);
  }
}