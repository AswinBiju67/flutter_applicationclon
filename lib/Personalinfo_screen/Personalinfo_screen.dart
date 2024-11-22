import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalinfoScreen extends StatefulWidget {
  const PersonalinfoScreen({super.key});

  @override
  State<PersonalinfoScreen> createState() => _PersonalinfoScreenState();
}

class _PersonalinfoScreenState extends State<PersonalinfoScreen> {
  String? rvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Personal information",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Personal details",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                hintText: "Date of birth",
                suffixIcon: Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )),
            ),
            SizedBox(height: 20,),
            Text("Gender",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Male",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    Radio(value: "Male", groupValue: rvalue, onChanged: (value) {
                      
                    },)
                  ],),
                ),
              ),
              Container(
                height: 40,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Female",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),
                    Radio(value: "Female", groupValue: rvalue, onChanged: (value) {
                      
                    },)
                  ],),
                ),
              )
            ],),
            SizedBox(height: 15,),
            Divider(color: Colors.black,),
            SizedBox(height: 15,),
            Text("Contact details",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("State of residence",style: GoogleFonts.montserrat(fontSize: 17),),
                  Icon(Icons.keyboard_arrow_down)
                ],),
              ),
            ),
            Text("Required for GST Tax Invoicing",style: GoogleFonts.montserrat(fontSize: 17,),),
            SizedBox(height: 15,),
             Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  
                  Container(
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(color: Colors.black))
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Country Code",style: GoogleFonts.montserrat(fontSize: 15),),
                          Row(
                            children: [
                              Text("+91 (IND)",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                               Icon(Icons.keyboard_arrow_down,size: 20,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
                  Container(
                    
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile number",style: GoogleFonts.montserrat(fontSize: 15),),
                          Row(
                            children: [
                              Text("735653XXXX",style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.bold),),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
                ],
              )
            ),
            SizedBox(height: 15,),
            TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )),
          ),
          Text("Optional",style: GoogleFonts.montserrat(fontSize: 17),),
          SizedBox(height: 15,),
          Divider(color: Colors.black,),
          SizedBox(height: 15,),
          Text("Train passenger details",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold),),
          Text("Optional",style: GoogleFonts.montserrat(fontSize: 17),),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Pre-set preferences for faster bookings"),
            ),
          ),
          SizedBox(height: 15,),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Berth preference",style: GoogleFonts.montserrat(fontSize: 17),),
                  Icon(Icons.keyboard_arrow_down)
                ],),
              ),
            ),
            Text("Berth preference not guaranted",style: GoogleFonts.montserrat(fontSize: 17,),),
          SizedBox(height: 15,),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Seat preference",style: GoogleFonts.montserrat(fontSize: 17),),
                  Icon(Icons.keyboard_arrow_down)
                ],),
              ),
            ),
            Text("Seat preference not guaranted",style: GoogleFonts.montserrat(fontSize: 17,),),
          SizedBox(height: 15,),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Meal preference",style: GoogleFonts.montserrat(fontSize: 17),),
                  Icon(Icons.keyboard_arrow_down)
                ],),
              ),
            ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorconst.PRIMARY,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Save changes",style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          )
          ],),
          
        ),
      ),
);
  }
}