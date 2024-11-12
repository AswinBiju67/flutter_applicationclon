import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/gobal/booking.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int activeIndex=0;
  int activeIndex2=0;
  bool state=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
         Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Bus Tickets",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
          ),
         
          Padding(
            padding: const EdgeInsets.all(10),
            child: Booking(),
          ),


          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 5),
              child: Row(
                children: [
                  Image.asset(
                    height: 40,
                    width: 25,
                    imageconst.WOMEN),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Booking for women",style: GoogleFonts.montserrat(fontSize: 17),),
                        RichText(text: TextSpan(text: "Know more",style: GoogleFonts.montserrat(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,)),),
                      ],
                    ),
                    SizedBox(width: 100,),
                    Switch(value: state,
                    activeColor: colorconst.PRIMARY, 
                    onChanged: (value) {
                    state=value;
                    print(value);
                    setState(() {
                
                   });
            },),
                ],
              ),
            ),),
          ),
         
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colorconst.PRIMARY,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search,color: Colors.white,size: 20,),
                  SizedBox(width: 5,),
                  Text("Search buses",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),)
                ],
              ),),
          ),
          
                  Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        Text("Offers",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),
        Text("Get best deals with great offers",style: GoogleFonts.montserrat())
              ],
            ),
            RichText(text: TextSpan(text: "View all",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue,decoration: TextDecoration.underline,
                          decorationThickness: 2,)))
          ],
        ),
      ),
      SizedBox(height: 10,),
      _offersection(),
     SizedBox(height: 10,),
     Center(
       child: AnimatedSmoothIndicator(    
          activeIndex: activeIndex,    
          count: 2,    
          effect: WormEffect(), 
       ),
     ),
     SizedBox(height: 15,),
     
    CarouselSlider(items: [
       _Calendersection(),
        _Livetickets()
    ], options: CarouselOptions(
      height: 300,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {
          activeIndex2=index;
          setState(() {
            
          });
        },
        scrollDirection: Axis.horizontal,
     ),),
     Center(
       child: AnimatedSmoothIndicator(    
          activeIndex: activeIndex2,    
          count: 2,    
          effect: WormEffect(), 
       ),
     ),
     
      ],),

    );
  }

  Padding _Livetickets() {
    return Padding(
     padding: const EdgeInsets.only(left: 15,right: 15),
     child: Column(
       children: [
        Row(
         children: [
           Image.asset(
            height: 70,
            width: 70,
            "assets/images/Train-PNG-File.png"),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Live PNR updates",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                Text("Get available train seat for WL PNR")
              ],
            )
         ],
       ),
         Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
          color: Colors.grey.shade300
          ,borderRadius: BorderRadius.circular(15)
         ),
         child: Padding(
           padding: const EdgeInsets.only(left: 10,right: 10),
           child: Column(
             children: [
              SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Get available train seat for WL PNR",style: GoogleFonts.montserrat(fontSize: 17),),
                   SizedBox(width: 10,),
                   
                 ],
               ),
               SizedBox(height: 10,),
              TextField(decoration: InputDecoration(
                hintText: "Train PNR number",hintStyle: GoogleFonts.montserrat(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("Check",style: GoogleFonts.monda(),),alignment: Alignment.center,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )),),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Image.asset(
                    height: 35,
                    "assets/images/R (3).png"),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Live Whatsapp updates",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                        Text("See now it works",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),)
                      ],
                    ),
                    
                 ],
               ),
               SizedBox(height: 10,),
               Text("",style: GoogleFonts.montserrat(),)
             ],
           ),
         ),
         ),
       ],
     ),
     

   );
  }

  Padding _Calendersection() {
    return Padding(
     padding: const EdgeInsets.only(left: 15,right: 15),
     child: Column(
       children: [
        Row(
         children: [
           Image.asset(
            height: 70,
            width: 70,
            "assets/images/Train-PNG-File.png"),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book trains for Diwali",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold),),
                Text("Book now to get confirmed ticket")
              ],
            )
         ],
       ),
         Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
          color: Colors.grey.shade300
          ,borderRadius: BorderRadius.circular(15)
         ),
         child: Padding(
           padding: const EdgeInsets.only(left: 10,right: 10),
           child: Column(
             children: [
              SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Get Rs.100 off using code",style: GoogleFonts.montserrat(),),
                   SizedBox(width: 10,),
                   Text("FESTIVE",style: GoogleFonts.montserrat(fontSize: 17,color: Colors.green,fontWeight: FontWeight.bold),)
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Container(
                    height: 70,
                    width: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: 
                        BoxFit.fill,
                        image: AssetImage("assets/images/transparent-colorful-blank-calendar-illustration-icon-14441182-png-1024x1016.png"))
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Nov",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                        Text("Diwali",style: GoogleFonts.montserrat(color: Colors.pink),),
                      ],
                    ),
                   ),
                   Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/transparent-colorful-blank-calendar-illustration-icon-14441182-png-1024x1016.png"))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Dec",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    Text("New Year",style: GoogleFonts.montserrat(color: Colors.blue),),
                  ],
                ),
               ),
                Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/transparent-colorful-blank-calendar-illustration-icon-14441182-png-1024x1016.png"))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Jan",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    Text("Pongal",style: GoogleFonts.montserrat(color: Colors.green),),
                  ],
                ),
               ),
                Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/transparent-colorful-blank-calendar-illustration-icon-14441182-png-1024x1016.png"))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Feb",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    
                  ],
                ),
               ),
                 ],
               ),
               SizedBox(height: 10,),
               Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(15)
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.directions_bus),
                   SizedBox(width: 10,),
                   Text("Book trains now",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),)
                 ],
               ),),
               SizedBox(height: 10,),
               Text("Authorised IRCTC partner",style: GoogleFonts.montserrat(),)
             ],
           ),
         ),
         ),
       ],
     ),
     

   );
  }

  CarouselSlider _offersection() {
    return CarouselSlider.builder(itemCount: 2, itemBuilder: (context, index, realIndex) => 
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imageconst.OFFER[index]))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey
              ),child: Center(child: Text(textconst.BT[index],style: GoogleFonts.montserrat(),)),),
            SizedBox(height: 10,),
            Text(textconst.Save[index],style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("Valid till 01 Nov",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
            SizedBox(height: 18,),
            Container(
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),child: Center(child: Text("First",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),)),),
          ],
        ),
      ),),
      
    ), options: CarouselOptions(
    height: 250,
      viewportFraction: .8,
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
   ),);
  }
}

