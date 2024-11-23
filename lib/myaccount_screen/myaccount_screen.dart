import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/GST_screen/GST_screen.dart';
import 'package:flutter_applicationclon/KnowAboutRedbus_screnn/KnowAboutRedbus_screnn.dart';
import 'package:flutter_applicationclon/Payments_screen/Payments_screen.dart';
import 'package:flutter_applicationclon/Personalinfo_screen/Personalinfo_screen.dart';
import 'package:flutter_applicationclon/Personalinfo_screen/passengers_screen.dart';
import 'package:flutter_applicationclon/Redbuswallet_screen/Redbuswallet_screen.dart';
import 'package:flutter_applicationclon/booking_screen/booking_screen.dart';
import 'package:flutter_applicationclon/myaccount_screen/account_seetingscreen.dart';
import 'package:flutter_applicationclon/myaccount_screen/offer_screen.dart';
import 'package:flutter_applicationclon/myaccount_screen/referrals_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';
import 'package:flutter_applicationclon/utilis/images.dart';
import 'package:google_fonts/google_fonts.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({super.key});

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  String? changevalue = "india";
  String? radiobatton = "English";
  String? Option = "YES";
  String? radiob = "IND";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(imageconst.MYUSER))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User",
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "+91735653XXXX",
                        style: GoogleFonts.montserrat(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Member since Oct 2024",
                        style: GoogleFonts.montserrat(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28, right: 10),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.grey))),
                      child: Column(
                        children: [
                          Text(
                            "0",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                          Text(
                            "Total trips",
                            style: GoogleFonts.montserrat(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      decoration: BoxDecoration(
                          border:
                              Border(right: BorderSide(color: Colors.grey))),
                      child: Column(
                        children: [
                          Text(
                            "0 km",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                          Text(
                            "Travelled",
                            style: GoogleFonts.montserrat(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          Text(
                            "0 kg",
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                          Text(
                            "Carbon saving",
                            style: GoogleFonts.montserrat(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My details",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookingScreen(),
                            ));
                      },
                      child: DetailsREAC(
                        nam: "Bookings",
                        Dicon: Icons.menu,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalinfoScreen(),
                            ));
                      },
                      child: DetailsREAC(
                        Dicon: Icons.person,
                        nam: "Personal information",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PassengersScreen(),));
                      },
                      child: DetailsREAC(
                        Dicon: Icons.person_3,
                        nam: "Passengers",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Payments",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RedbuswalletScreen(),
                              ));
                        },
                        child: DetailsREAC(
                          Dicon: Icons.wallet,
                          nam: "redBus Wallet",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentsScreen(),
                              ));
                        },
                        child: DetailsREAC(
                          Dicon: Icons.money,
                          nam: "Payment methods",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GstScreen(),
                              ));
                        },
                        child: DetailsREAC(
                          Dicon: Icons.file_copy,
                          nam: "GST details",
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "More",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OfferScreen(),));
                      },
                      child: DetailsREAC(
                        Dicon: Icons.tag,
                        nam: "Offers",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReferralsScreen(),));
                      },
                      child: DetailsREAC(
                        Dicon: Icons.share,
                        nam: "Referrals",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DetailsREAC(
                      Dicon: Icons.video_chat,
                      nam: "Trending videos",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KnowaboutredbusScrenn(),
                              ));
                        },
                        child: DetailsREAC(
                          Dicon: Icons.info_outline,
                          nam: "Know about redBus",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        showBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            width: double.infinity,
                            height: 300,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Enjoy the redbus app?",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 21),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(imageconst.Star),
                                      Text(
                                        "Rate your experience with the redBus App",
                                        style: GoogleFonts.montserrat(),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star_border_outlined,
                                            size: 40,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            size: 40,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            size: 40,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            size: 40,
                                          ),
                                          Icon(
                                            Icons.star_border_outlined,
                                            size: 40,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: DetailsREAC(
                        Dicon: Icons.star_border,
                        nam: "Rate app",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                        onTap: () {
                          showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                              height: 290,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, top: 20, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Help",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, top: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.chat),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Chat with us",
                                                  style: GoogleFonts.montserrat(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17),
                                                )
                                              ],
                                            ),
                                            Icon(Icons.arrow_right)
                                          ],
                                        ),
                                      ),
                                    ),
                                    HELPCUSTOM(
                                      t: "Bus Suppoet",
                                      t2: "+91945600000",
                                      Ic: Icons.person,
                                    ),
                                    HELPCUSTOM(
                                      t: "Rail Suppoet",
                                      t2: "+91945677777",
                                      Ic: Icons.person,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: DetailsREAC(
                          Dicon: Icons.help_outline,
                          nam: "HELP",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSeetingscreen(),));
                      },
                      child: DetailsREAC(
                        Dicon: Icons.settings,
                        nam: "Account settings",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Perferences",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        showBottomSheet(
                            context: context,
                            builder: (context) => Container(
                                  width: double.infinity,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                    height: 30,
                                                    imageconst.IFLAG),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "India",
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                            Radio(
                                              value: "IND",
                                              groupValue: radiob,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    height: 20,
                                                    imageconst.UFLAG),
                                                    SizedBox(width: 5,),
                                                  Text(
                                                "united states",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 21,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                                ],
                                              ),
                                              Radio(
                                                value: "INUSD",
                                                groupValue: radiob,
                                                onChanged: (value) {
                                                  print(value);
                                                  radiobatton = value;
                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: Row(
                          children: [
                            Image.asset(height: 30, imageconst.IFLAG),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Country",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "India",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 210,
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.money,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Currency",
                                style: GoogleFonts.montserrat(
                                    fontSize: 21, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "INR",
                                style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        showBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            height: 350,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Language",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: colorconst.PRIMARY),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "English",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Radio(
                                              value: "English",
                                              groupValue: radiobatton,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "हिन्दी(Hindi)",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Radio(
                                              value: "Hindi",
                                              groupValue: radiobatton,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "தமிழ்(Tamil)",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Radio(
                                              value: "Tamil",
                                              groupValue: radiobatton,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "తెలుగు(Telugu)",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Radio(
                                              value: "Telugu",
                                              groupValue: radiobatton,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "മലയാളം(Malayalam)",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Radio(
                                              value: "Mala",
                                              groupValue: radiobatton,
                                              onChanged: (value) {
                                                print(value);
                                                radiobatton = value;
                                                setState(() {});
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: Row(
                          children: [
                            Text(
                              "Aa",
                              style: GoogleFonts.montserrat(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Language",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "English",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 188,
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.grey))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Notification",
                            style: GoogleFonts.montserrat(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 173,
                          ),
                          Icon(
                            Icons.arrow_right,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            width: double.infinity,
                            height: 350,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Booking for women",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Providing helpful details to smartly choose bus travel for women",
                                    style: GoogleFonts.montserrat(fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Know more",
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue.shade900),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Yes",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Radio(
                                        value: "YES",
                                        groupValue: radiobatton,
                                        onChanged: (value) {
                                          print(value);
                                          radiobatton = value;
                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "No",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Radio(
                                        value: "NO",
                                        groupValue: radiobatton,
                                        onChanged: (value) {
                                          print(value);
                                          radiobatton = value;
                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: colorconst.PRIMARY),
                                    child: Center(
                                        child: Text(
                                      "Confirm",
                                      style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 21),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: Row(
                          children: [
                            Image.asset(height: 30, imageconst.WOMEN),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Booking for women",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "No",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HELPCUSTOM extends StatelessWidget {
  String? t = "";
  String? t2 = "";

  IconData? Ic;
  HELPCUSTOM({
    super.key,
    this.t,
    this.t2,
    this.Ic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Ic),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      t!,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      t2!,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}

class DetailsREAC extends StatelessWidget {
  String? nam = "";
  IconData? Dicon;
  DetailsREAC({
    this.Dicon,
    this.nam,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Dicon),
              SizedBox(
                width: 20,
              ),
              Text(
                nam!,
                style: GoogleFonts.montserrat(
                    fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Icon(
            Icons.arrow_right,
            size: 25,
          )
        ],
      ),
    );
  }
}
