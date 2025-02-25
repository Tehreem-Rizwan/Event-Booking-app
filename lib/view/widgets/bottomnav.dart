import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_booking_app/constants/app_colors.dart';
import 'package:event_booking_app/view/screens/booking.dart';
import 'package:event_booking_app/view/screens/home.dart';
import 'package:event_booking_app/view/screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;
  late HomePage home;
  late Booking booking;
  late Profile profile;
  int currentIndex = 0;
  @override
  void initState() {
    home = HomePage();
    booking = Booking();
    profile = Profile();
    pages = [home, booking, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: kSecondaryColor,
          color: kPrimaryColor,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: kSecondaryColor,
              size: 30,
            ),
            Icon(
              Icons.book,
              color: kSecondaryColor,
              size: 30,
            ),
            Icon(
              Icons.person_outline,
              color: kSecondaryColor,
              size: 30,
            )
          ]),
      body: pages[currentIndex],
    );
  }
}
