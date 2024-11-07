import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/bottmnaviscreen/bottmnaviscreen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottmnaviscreen()));
                },
                child: CircleAvatar(radius: 15,
                backgroundColor: Colors.white,child: Icon(Icons.close_sharp,color: colorconst.PRIMARY,),),
              ))
          ],),),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MOBILE NUMBERT",style: GoogleFonts.montserrat(fontSize: 15 ),),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("+91 7356XXXXXX",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("Edit",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 10,),
                Text("ONE TIME PASSWORD",style: GoogleFonts.montserrat(fontSize: 15 ),),
                SizedBox(height: 20,),
                Row(children: List.generate(6, (index) => Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                      ),
                  ),
                ),),),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottmnaviscreen(),));
                  },
                  child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:colorconst.PRIMARY,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Center(child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("VERIFY OTP",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),),
                  )),
                                ),
                ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Didn't receive the OTP? Retry in",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold),),
                  Text("  00.29",style: GoogleFonts.montserrat(fontSize: 15,color: colorconst.PRIMARY,fontWeight: FontWeight.bold),),
                ],
              ),
              
              SizedBox(height: 25,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.message,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text("SMS (3)",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey ),)
                    ],
                  ),),
                  
                   Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone,color: Colors.grey),
                      SizedBox(width: 10,),
                      Text("Phone (3)",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.grey ),)
                    ],
                  ),),
                ],
              )
              ],
            ),
          ),
        ],
      ),
    );
  }
}