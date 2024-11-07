
import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/onbording_screen/onbording_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:flutter_applicationclon/utilis/text.dart';
import 'package:google_fonts/google_fonts.dart';

class ClScreen extends StatefulWidget {
  const ClScreen({super.key});

  @override
  State<ClScreen> createState() => _Country$lannguageScreenState();
}

class _Country$lannguageScreenState extends State<ClScreen> {
  String? changevalue="india";
  String ?radiobatton="English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OnbordingScreen(),));
        },
        child: Icon(Icons.arrow_back,color: Colors.white,)),
      title: Text("Country and Language",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.white),),
      backgroundColor: colorconst.PRIMARY,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Country",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: colorconst.PRIMARY,fontSize: 25),),
              SizedBox(height: 10,),
              DropdownButton(
                isExpanded: true,
                    value: changevalue,
                    hint: Text("Country"),
                    items: List.generate(textconst.COUNTRY.length, 
                    (index) => DropdownMenuItem(child: Row(
                      children: [
                        Image.asset(
                          height: 25,
                          width: 25,
                          imageconst.FLAG[index]),
                          SizedBox(width: 15,),
                        Text(textconst.COUNTRY[index].toUpperCase()),
                      ],
                    ),
                    value: textconst.COUNTRY[index],),
                    ), 
                    onChanged: (value) {
                    changevalue=value;
                    print(value);
                    setState(() {
                      
                    });
                  },),
                  SizedBox(height: 10,),
                  Text("Language",
                  style: GoogleFonts.montserrat(fontSize: 25,fontWeight: FontWeight.bold,color: colorconst.PRIMARY),),
                  SizedBox(height: 10,),
                  Container(child: Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("English",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.w400),),
                      Radio(value: "English", groupValue: radiobatton, onChanged: (value) {
                      print(value);
                      radiobatton=value;
                      setState(() {
                        
                      });},),],),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("हिन्दी(Hindi)",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.w400),),
                      Radio(value: "Hindi", groupValue: radiobatton, onChanged: (value) {
                      print(value);
                      radiobatton=value;
                      setState(() {
                        
                      });},),],),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("தமிழ்(Tamil)",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.w400),),
                      Radio(value: "Tamil", groupValue: radiobatton, onChanged: (value) {
                      print(value);
                      radiobatton=value;
                      setState(() {
                        
                      });},),],),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("తెలుగు(Telugu)",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.w400),),
                      Radio(value: "Telugu", groupValue: radiobatton, onChanged: (value) {
                      print(value);
                      radiobatton=value;
                      setState(() {
                        
                      });},),],),
                       Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("മലയാളം(Malayalam)",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.w400),),
                      Radio(value: "Mala", groupValue: radiobatton, onChanged: (value) {
                      print(value);
                      radiobatton=value;
                      setState(() {
                        
                      });},),],),
                    ],
                  ),)
            ],
            
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnbordingScreen(),));
        },
        child: Container(
          height: 75,
          color: colorconst.PRIMARY,
          child: Center(child: Text("CONTINUE",style: GoogleFonts.montserrat(fontSize: 25,color: Colors.white),)),),
      ),
    );
  }
}