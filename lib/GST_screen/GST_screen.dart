import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class GstScreen extends StatefulWidget {
  const GstScreen({super.key});

  @override
  State<GstScreen> createState() => _GstScreenState();
}

class _GstScreenState extends State<GstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text("GST details",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),),backgroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:15,top: 20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Add your business details",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 17)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10,right: 15),
                    child: Column(
                      children: [
                        TEXTFEILDCUSTOM(text: "GSTIN",),
                        SizedBox(height: 20,),
                        TEXTFEILDCUSTOM(text: "Business Name",),
                        SizedBox(height: 20,),
                        TEXTFEILDCUSTOM(text: "Business Address",),
                        SizedBox(height: 20,),
                        TEXTFEILDCUSTOM(text: "Business Email",),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.shade100,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("In case of invalid/cancelled GSTIN, this booking shall be considerd as personal booking",style: GoogleFonts.montserrat(),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 15),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorconst.PRIMARY
                ),
                child: Center(child: Text("Save GST details",style: GoogleFonts.montserrat(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TEXTFEILDCUSTOM extends StatelessWidget {
  String? text="";
   TEXTFEILDCUSTOM({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder()),
      );
  }
}