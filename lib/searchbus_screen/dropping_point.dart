import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/searchbus_screen/passinfo.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:google_fonts/google_fonts.dart';

class DroppingPoint extends StatelessWidget {
  const DroppingPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("All dropping points in Bengaluru"),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "06: 35   Srirange panta",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          value: "v",
                          groupValue: "v",
                          onChanged: (value) => value,
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "07: 05  Mandya opp.Bus stn",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          value: "v",
                          groupValue: "M",
                          onChanged: (value) => value,
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "07: 25  Channapatna",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          value: "v",
                          groupValue: "c",
                          onChanged: (value) => value,
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "07: 35  Ramanagara",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600),
                        ),
                        Radio(
                          value: "v",
                          groupValue: "M",
                          onChanged: (value) => value,
                          activeColor: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Passinfo(),));
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: colorconst.PRIMARY),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                      child: Text(
                    "Proceed",
                    style: GoogleFonts.montserrat(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
