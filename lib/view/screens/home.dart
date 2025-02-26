import 'package:flutter/material.dart';
import 'package:event_booking_app/constants/app_colors.dart';
import 'package:event_booking_app/constants/app_images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20.0,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffe3e6ff),
                Color(0xfff1f3ff),
                kSecondaryColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text(
                    "Gujrat, Pakistan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kPrimaryColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Hello, Tehreem",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "There are 20 events\n around your location",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6351ec),
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    hintText: "Search an Event",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryCard(Assets.imagesMusical, "Music"),
                    SizedBox(width: 30),
                    _buildCategoryCard(Assets.imagesTshirt, "Clothing"),
                    SizedBox(width: 30),
                    _buildCategoryCard(Assets.imagesConfetti, "Festival"),
                    SizedBox(width: 30),
                    _buildCategoryCard(Assets.imagesDish, "Food"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildUpcomingEventsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String imagePath, String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 130,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              Text(
                title,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUpcomingEventsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Upcoming Events",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                "See All",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          margin: EdgeInsets.only(right: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  Assets.imagesEvent,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                width: 50,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Feb\n25",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Concerts",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                textAlign: TextAlign.center,
                "\$50",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6351ec),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_on),
            Text(
              textAlign: TextAlign.center,
              "Lahore, Pakistan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xff6351ec),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          margin: EdgeInsets.only(right: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  Assets.imagesEvent,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                width: 50,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    "Feb\n25",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Concerts",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                textAlign: TextAlign.center,
                "\$50",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6351ec),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_on),
            Text(
              textAlign: TextAlign.center,
              "Lahore, Pakistan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Color(0xff6351ec),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
