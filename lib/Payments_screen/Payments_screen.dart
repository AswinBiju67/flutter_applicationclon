import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payments methods",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: Image.asset(
        fit: BoxFit.cover,
        imageconst.NOPAY),
    );
  }
}