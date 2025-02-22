import 'package:event_booking_app/constants/app_colors.dart';
import 'package:event_booking_app/constants/app_images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20.0, right: 20),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffe3e6ff),
          Color(0xfff1f3ff),
          kSecondaryColor,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
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
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello, Tehreem",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "There are 20 events\n around your location",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6351ec),
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    hintText: "Search a Location",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesMusical,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Music",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesTshirt,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Clothing",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesConfetti,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Festival",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesDish,
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Food",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
