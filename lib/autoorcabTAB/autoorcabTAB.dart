import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Autoorcab extends StatefulWidget {
  const Autoorcab({super.key});

  @override
  State<Autoorcab> createState() => _AutoorcabState();
}

class _AutoorcabState extends State<Autoorcab> {
  bool state=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      height: 50,
                      "https://th.bing.com/th/id/R.d70d69275ccf3d48f7f48427d9e5264e?rik=qxlkrDN%2bV72GVw&riu=http%3a%2f%2fclipartmag.com%2fimages%2flocation-icon-png-2.png&ehk=OZ2HH4zb7qblcNw2AmgNw0tK0M70yZjdTZxnZnW7b4s%3d&risl=&pid=ImgRaw&r=0"),
                     
                      Text("Enable Location for accurate\n pickup and drop points",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold ),),
                      Switch(value: state,
                      activeColor: Colors.grey,
                      onChanged: (value) {
                      state=value;
                      print(value);
                      setState(() {
                  
                     });
              },),
                  ],
                ),
              ),),
              SizedBox(height: 20,),
              Text("Auto/Cabs",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold ),),
              SizedBox(height: 5,),
              Text("Get quick rides at your doorstep",style: GoogleFonts.montserrat(fontSize: 17 ),),
              SizedBox(height: 15,),
              Container(
                height: 114,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)
                ),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_history,size: 25,),
                      hintText: "Pickup",hintStyle: GoogleFonts.montserrat( ),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                    ),),
                     TextField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_history,size: 25,),
                      hintText: "Where to",hintStyle: GoogleFonts.montserrat( ),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("- Part of",style: GoogleFonts.montserrat(fontSize: 17, ),),
                  Text(" ONDC",style: GoogleFonts.montserrat(fontSize: 17, color: Colors.blue,fontWeight: FontWeight.bold),),
                  Text(" NETWORK",style: GoogleFonts.montserrat(fontSize: 17,fontWeight: FontWeight.bold),),
                  Text(" -",style: GoogleFonts.montserrat(fontSize: 17, ),),
                ],
              ),
              SizedBox(height: 50,),
              Text("Recent destination",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold ),)
            ],
          ),
        ),
      ),
    );
  }
}