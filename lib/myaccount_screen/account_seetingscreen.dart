import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSeetingscreen extends StatelessWidget {
  const AccountSeetingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account settings",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.logout_outlined),
                  SizedBox(width: 10,),
                  Text("Log Out",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w600),)
                ],
              ),
              Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
          SizedBox(height: 10,),
          Divider(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.delete_outline,color: colorconst.PRIMARY),
                  SizedBox(width: 10,),
                  Text("Delete account",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.w600,color: colorconst.PRIMARY),)
                ],
              ),
              Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
        ],),
      ),
    );
  }
}