import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/searchbus_screen/ticket_screen.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchbusScreen extends StatefulWidget {
  const SearchbusScreen({super.key});

  @override
  State<SearchbusScreen> createState() => _SearchbusScreenState();
}

class _SearchbusScreenState extends State<SearchbusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(actions: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Thodupuzha",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                 Icon(Icons.arrow_right),
            Text("Bengaluru",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),)
              ],
            ),
            Text("3 Buses")
          ],
        ),
        SizedBox(width: 70,),
       Padding(
         padding: const EdgeInsets.only(right: 10),
         child: Column(
           children: [
             Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.redAccent.shade100
              ),
              child: Center(child: Text("19 NoV",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),)),
             ),
             Text("Mon")
           ],
         ),
       )
      ],backgroundColor: Colors.white,),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  height: 110,
                  "assets/images/322.jpg"),
                  Image.asset(
                  height: 130,
                  "assets/images/311.jpg"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(textconst.off.length, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Icon(Icons.directions_bus),
                      SizedBox(width: 10,),
                      Text(textconst.off[index])
                    ],),
                  ),
                ),
              ),),
            ),
          ),
          Image.asset("assets/images/321.jpg"),
          Column(
            children: List.generate(
              3,
              (index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TicketScreen(),));
                      },
                      child: Container(
                        
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("23:05 - 11:15"),
                                      Text("12h 10m - 30 Seats")
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("₹788"),
                                      Text("Onwards"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("KSRTC (Kerala) - 109",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("Swift Deluxe Non Ac Air Bus (2+2)")
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey.shade300
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.green.shade700
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Row(
                                                children: [
                                                Icon(Icons.star_outline,color: Colors.white,),
                                                Text("4.5",style: TextStyle(color: Colors.white),)
                                              ],),
                                            ),
                                          ),
                                        ),
                                        Text("04")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
            ),
          ),
        ],
      ),
    );
  }
}
