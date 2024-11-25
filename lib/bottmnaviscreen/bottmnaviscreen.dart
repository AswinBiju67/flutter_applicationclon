import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/booking_screen/booking_screen.dart';
import 'package:flutter_applicationclon/help_screen/help_screen.dart';
import 'package:flutter_applicationclon/home_screen/home_screen.dart';
import 'package:flutter_applicationclon/myaccount_screen/myaccount_screen.dart';
import 'package:flutter_applicationclon/utilis/color.dart';

class Bottmnaviscreen extends StatefulWidget {
  const Bottmnaviscreen({super.key});

  @override
  State<Bottmnaviscreen> createState() => _BottmnaviscreenState();
}

class _BottmnaviscreenState extends State<Bottmnaviscreen> {
  int selectedindex=0;
  
   static const List screen=[
    HomeScreen(),
    BookingScreen(),
    HelpScreen(),
    MyaccountScreen()
    
    

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    
      body: Center(child: screen[selectedindex],),
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
      onTap: (value) {
        selectedindex=value;
        setState(() {

        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: colorconst.PRIMARY,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
        items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home"),
          BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: "Booking"),
          BottomNavigationBarItem(
          icon: Icon(Icons.help_center_rounded),
          label: "Help"),
          BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: "MY Account"),
          
        ],
      ),
    );
  }
}
