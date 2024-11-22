import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/TrainTAB/csaet.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Seattab extends StatefulWidget {
  const Seattab({super.key});

  @override
  State<Seattab> createState() => _SeattabState();
}

class _SeattabState extends State<Seattab> {
  @override
  Widget build(BuildContext context) {
    bool cbox=false;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("PUNE to MMCT",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
          Text("Saturday, 23 Nov : 2 trains",style: GoogleFonts.montserrat(fontSize: 17),),
          
        ],
      ),),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.grey.shade300,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("NOV",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 15),)
                  ),
                ),
                Row(children: List.generate(6, (index) =>  Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade500)
                     ),
                     child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(textconst.date[index],style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 15),)
                    ),
                  ),
                ),),)
              ],
            ),
          ),
       
          Container(
              height: 66,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                            height: 50, fit: BoxFit.cover, imageconst.money),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Row(
                                children: [
                                  Text(
                                    "Opt-in for",
                                    style: GoogleFonts.montserrat(),
                                  ),
                                  Text(
                                    " Free Cancellation",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red.shade900),
                                  ),
                                ],
                              ),
                            ),
                            Text("₹0 cancellation fee . instant refund")
                          ],
                        ),
                      ],
                    ),
                    Checkbox(
                      value: cbox,
                      onChanged: (value) {
                        cbox = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
               SizedBox(height: 10,),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("22226 Csmt Vandebharat"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("09:20 AM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Pune Jn(PUNE)")
                          ],
                        ),
                        Text("03h 15m"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("12:35 PM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("C Shivaji Ma...(CSMT)")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Csaet(),));
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange.shade200,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text("CC",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.brown),),
                                  Text("715",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.brown),),
                                                      
                                ],),
                                Container(
                                  height: 40,
                                 
                                  decoration: BoxDecoration(
                                  color: Colors.amber.shade100,
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
                                ),
                                child: Center(child: Text("TQWL 11")),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),),)
                  ],
                ),
              )),
              SizedBox(height: 10,),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("122220 Ltt Duronto"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("07:55 AM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Pune Jn(PUNE)")
                          ],
                        ),
                        Text("03h 20m"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("11:15 PM",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17),),
                            Text("Lokmanyatilak (LTT)")
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Csaet(),));
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green.shade200,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text("3A",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.brown),),
                                  Text("715",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.brown),),
                                                      
                                ],),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
                                ),
                                child: Center(child: Text("Available 22")),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),),)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}