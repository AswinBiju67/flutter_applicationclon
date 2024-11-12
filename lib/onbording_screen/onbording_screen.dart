
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/login_join_screen/login_join_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';

import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Padding(
        padding: const EdgeInsets.only(right: 10),
        child: InkWell(
          onTap: () {
            
          },
          child: Text("Skip",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.grey),)),
      )],),
      body: Column(
        children: [
          CarouselSlider.builder(itemCount: 2, itemBuilder: (context, index, realIndex) => 
          Container(
            child: Column(
              children: [
                Image.asset(
                  fit: BoxFit.fill,
                  imageconst.ONBUS[index]),
                  Text(textconst.ONBOARDTEXT[index],style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 21),textAlign: TextAlign.center,),
                 ],
            )), options: CarouselOptions(
      height: 450,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {
          activeIndex=index;
          setState(() {
            
          });
        },
        scrollDirection: Axis.horizontal,
     ),),
      AnimatedSmoothIndicator(    
   activeIndex: activeIndex,    
   count: 2,    
   effect: WormEffect(), 
            ),
            SizedBox(height: 170),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginJoinScreen(),));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color:colorconst.PRIMARY,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Center(child: Text("JOIN",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginJoinScreen(),));
                },
                child: RichText(text: TextSpan(text: "LOGIN",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,
                 decoration: TextDecoration.underline,
                 decorationThickness: 2,
                          ),)),
              ),
                         SizedBox(height: 10,),
                        ],
                      ),
            ),
         
        ],
      ),
      
    );
  }
}