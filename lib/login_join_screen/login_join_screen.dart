import 'package:flutter/material.dart';

import 'package:flutter_applicationclon/splash_screen/splash_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:flutter_applicationclon/verify_otp/verify_otp.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginJoinScreen extends StatefulWidget {
  const LoginJoinScreen({super.key});

  @override
  State<LoginJoinScreen> createState() => _LoginJoinScreenState();
}

class _LoginJoinScreenState extends State<LoginJoinScreen> {
  String? changevalue="+91";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imageconst.LOGIN))
            ),
            child: Stack(children: [
              Positioned(
                right: 15,
                top: 50,
                child: InkWell(
                  onTap: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen(),));
                  },
                  child: CircleAvatar(radius: 15,
                  backgroundColor: Colors.white,child: Icon(Icons.close_sharp,color: colorconst.PRIMARY,),),
                ))
            ],),),
            SizedBox(height: 10,),
            Text("Create Account or Sign in",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                children: [
                  TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 10),),
                  hintText: "Enter your mobile number",hintStyle: GoogleFonts.montserrat(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: DropdownButton(
                    isExpanded: false,
                        value: changevalue,
                        items: List.generate(textconst.COUN.length, 
                        (index) => DropdownMenuItem(child: Row(
                          children: [
                           
                            Text(textconst.COUN[index].toUpperCase()),
                            
                          ],
                        ),
                        value: textconst.COUN[index],),
                        ), 
                        onChanged: (value) {
                        changevalue=value;
                        print(value);
                        setState(() {
                          
                        });
                      },),
                  ),
                  )
                  ,),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VerifyOtp(),));
                    },
                    child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color:colorconst.PRIMARY,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:  Center(child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("GENERATE OTP",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Text("(ONE TIME PASSWORD)",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.white,),),
                          
                        ],
                      ),
                    )),
                                  ),
                  ),
                SizedBox(height: 20,),
                Text("OR",style: GoogleFonts.montserrat(fontSize: 17),),
                SizedBox(height: 20,),
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child:  Center(child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            height: 25,
                            imageconst.GOOGLE),
                            SizedBox(width: 50,),
                          Text("Continue with Google",style: GoogleFonts.montserrat(fontSize: 17),),
                         
                          
                        ],
                      ),
                    )),
                                  ),
                SizedBox(height: 25,),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("By logging in,you agree to our",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,),),
                        SizedBox(width: 5,),
                        InkWell(
                          onTap: () {
                          },
                          child: RichText(text: TextSpan(text: "Terms and Conditions",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          ),)),
                        ),
                        Text(" and",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,),),
                      ],
                    ),
                    RichText(text: TextSpan(text: "Privacy Policy",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          ),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}