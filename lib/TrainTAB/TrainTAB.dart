import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/TrainTAB/train_bottomsreen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';

class Traintab extends StatefulWidget {
  const Traintab({super.key});

  @override
  State<Traintab> createState() => _TraintabState();
}

class _TraintabState extends State<Traintab> {
  @override
  Widget build(BuildContext context) {
    bool? cbox = false;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Containersection(cbox),
          SizedBox(
            height: 20,
          ),
          _Secondcontainersection(),
          SizedBox(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageconst.Off),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: _Thirdsection(),
              ),
              SizedBox(height: 10,),
                    Image.asset(imageconst.Trainus)

            ],
          )
        ],
      ),
    ));
  }

  Column _Thirdsection() {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Only on redRail",style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,fontSize: 17),),
                    SizedBox(height: 15,),
            Image.asset(imageconst.GUR),
            SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(
                  height: 35,
                  imageconst.Ano),
                Text("Announcements",style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,fontSize: 17),),
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.brown,width: 2),
                      color: Colors.amber.shade100
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 15,bottom: 15,right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Want a confirmed ticket for this\nfestive season?",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                              Text("50+ Special trains announced",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.amber.shade900),),
                            ],
                          ),
                        ),
                        CircleAvatar(radius: 30,backgroundColor: Colors.amber,
                        child: Icon(Icons.arrow_right_alt_outlined,size: 40,color: Colors.white,),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue,width: 2),
                      color: Colors.blueGrey.shade100
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 15,bottom: 15,right: 30),
                          child: Text("Indian Railway has restarted linen\nsupply in AC classes in a phased\nmanner",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                        ),
                        CircleAvatar(radius: 30,backgroundColor: Colors.blue,
                        child: Icon(Icons.arrow_right_alt_outlined,size: 40,color: Colors.white,),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Offer for you",style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,fontSize: 17),),
                    SizedBox(height: 15,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 150,
                          width: 380,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Image.asset(
                                height: 100,
                                fit: BoxFit.cover,
                                textconst.offer[index]["url"]),
                                SizedBox(width: 40,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10,bottom: 15),
                                child: Column(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Zero Convenience FEE",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                                    Text("Valid till: 30 Nov",style: GoogleFonts.montserrat(),),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey.shade100,
                                            borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(child: Text("NOFEE")),
                                          ),
                                        ),
                                        SizedBox(width: 5,),
                                        Icon(Icons.copy)
                                      ],
                                    )
                                
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),),),
                    ),
                    SizedBox(height: 30,),
                    Text("Tutorial Video",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: List.generate(imageconst.VIDEO.length, (index) => Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          height: 120,
                          imageconst.VIDEO[index]),
                      ),),),
                    ),
                    SizedBox(height: 10,),
          Text("Why book with us?",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),

                ],
              );
  }

  Container _Secondcontainersection() {
    return Container(
      color: Colors.blueGrey.shade100,
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10,bottom: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PNR Status",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          "IRCTC Authorised",
                          style: GoogleFonts.montserrat(fontSize: 10),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(height: 50, imageconst.irctc2),
                            Image.asset(height: 50, imageconst.PNR),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 110,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Where is my train",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                        Text(
                          "Check live train status",
                          style: GoogleFonts.montserrat(fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(height: 50, imageconst.Live),
                            Image.asset(height: 50, imageconst.LOC),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Widgets(image: imageconst.TSC,txt: "Train",txt2: "schedule",),
                SizedBox(width: 5,),
                Widgets(image: imageconst.TrainBook,txt: "Coach",txt2: "position",),
                SizedBox(width: 5,),
                Widgets(txt: "Order",txt2: "food",image: imageconst.Food,),
                SizedBox(width: 5,),
                Widgets(txt:"Rail" ,txt2: "Maded",image: imageconst.Baby,)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _Containersection(bool cbox) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 30),
      child: Stack(children: [
        Positioned(
          top: 30,
          right: 50,
          child: CircleAvatar(radius: 20,backgroundColor: Colors.black,child: Icon(Icons.swap_vert,color: Colors.white,),)),
        Container(
        height: 350,
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
                        prefixIcon: Icon(Icons.directions_bus),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintText: "TO",
                            hintStyle: GoogleFonts.montserrat(fontSize: 21),
                            prefixIcon: Icon(Icons.directions_bus)),
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
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "09 Oct Sat",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Tomorrow",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue.shade800),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Day After",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue.shade800),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 66,
              width: double.infinity,
              decoration: BoxDecoration(
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
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TrainBottomsreen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: colorconst.PRIMARY),
                  child: Center(
                    child: Text(
                      "Search Train",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(height: 50, imageconst.irctc),
                Text(
                  " Authorised Partner",
                  style: GoogleFonts.montserrat(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                )
              ],
            )
          ],
        ),
      ),
      ],)
    );
  }
}

class Widgets extends StatelessWidget {
  String? txt="";
  String? txt2="";
  String? image="";

   Widgets({
    this.txt,
    this.txt2,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Image.asset(
                height: 40,
                image!)),
          ),
          Text(txt!,style: GoogleFonts.montserrat(),),
          Text(txt2!,style: GoogleFonts.montserrat(),),
      
        ],
      ),
    );
  }
}
