import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class Metrotab extends StatefulWidget {
  const Metrotab({super.key});

  @override
  State<Metrotab> createState() => _MetrotabState();
}

class _MetrotabState extends State<Metrotab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kochi Metro",
                        style: GoogleFonts.montserrat(
                            fontSize: 21, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Buy digital tickets b/w any 2 station",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, color: Colors.green),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context, builder: (context) =>
                             Container(
                              height: 350,
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Select metro for ypur city",style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,),),
                                      SizedBox(height: 20,),
                                      Container(
                                        height: 65,
                                        decoration: BoxDecoration(
                                          border: BorderDirectional(bottom: BorderSide(color: Colors.black))
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              height: 35,
                                              imageconst.KMETRO),
                                              SizedBox(width: 10,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Kochi Metro",style: GoogleFonts.montserrat(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.bold,),),
                                                Text("Get every 3rd ticket for free",style: GoogleFonts.montserrat(
                                                                        fontSize: 17,
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.green),)
                                              ],
                                            ),
                                            Icon(Icons.arrow_right,size: 45,)
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        height: 65,
                                        decoration: BoxDecoration(
                                          border: BorderDirectional(bottom: BorderSide(color: Colors.black))
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              height: 35,
                                              imageconst.DMETRO),
                                              SizedBox(width: 10,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Delhi Metro",style: GoogleFonts.montserrat(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.bold,),),
                                                Text("Newly Lunched",style: GoogleFonts.montserrat(
                                                                        fontSize: 17,
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.green),)
                                              ],
                                            ),
                                            SizedBox(width: 140,),
                                            Icon(Icons.arrow_right,size: 45,)
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Container(
                                        height: 65,
                                        decoration: BoxDecoration(
                                          border: BorderDirectional(bottom: BorderSide(color: Colors.black))
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              height: 35,
                                              imageconst.CMETRO),
                                              SizedBox(width: 10,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Chennai Metro",style: GoogleFonts.montserrat(
                                                                                fontSize: 17,
                                                                                fontWeight: FontWeight.bold,),),
                                                Text("Get every 3rd ticket for free",style: GoogleFonts.montserrat(
                                                                        fontSize: 17,
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.green),)
                                              ],
                                            ),
                                            SizedBox(width: 30,),
                                            Icon(Icons.arrow_right,size: 45,)
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              )),);
                             
                          },
                          child: Text(
                            "Change City",
                            style: GoogleFonts.montserrat(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),
                  Image.asset(height: 60, imageconst.KMETRO)
                ],
              ),
            ),
            Container(
              height: 165,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "From",
                              hintStyle: GoogleFonts.montserrat(fontSize: 21),
                              prefixIcon: Icon(Icons.directions_train),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                          TextField(
                              decoration: InputDecoration(
                                  hintText: "TO",
                                  hintStyle:
                                      GoogleFonts.montserrat(fontSize: 21),
                                  prefixIcon: Icon(Icons.directions_train)),
                              onChanged: (value) {
                                setState(() {});
                              }),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 66,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Passengers ",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                                Text(
                                  "Price/Person",
                                  style: GoogleFonts.montserrat(),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              height: 50,
                              width: 152,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Icon(
                                      Icons.delete_outline,
                                      size: 30,
                                    ),
                                  ),
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Center(
                                          child: Text(
                                        "1",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30),
                                      ))),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight: Radius.circular(15)),
                                        border:
                                            Border.all(color: Colors.black)),
                                    child: Icon(
                                      Icons.add,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: colorconst.PRIMARY,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Book ticket",
                      style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )),
            ),
            SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Part of",style: GoogleFonts.montserrat(fontSize: 17, ),),
                  Text(" ONDC",style: GoogleFonts.montserrat(fontSize: 17, color: Colors.blue,fontWeight: FontWeight.bold),),
                  Text(" NETWORK",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text(" T&C",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold,decoration: TextDecoration.underline 
                  ,color: Colors.blue),),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
