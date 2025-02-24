import 'package:event_booking_app/constants/app_colors.dart';
import 'package:event_booking_app/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        padding: const EdgeInsets.only(
          top: 50,
          left: 20.0,
        ),
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
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search_outlined),
                    hintText: "Search an Event",
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
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
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
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
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
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
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
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Material(
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
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming Events",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
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
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Feb\n25",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor),
                            ),
                          ),
                        )
                      ])),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Concerts",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor),
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
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        textAlign: TextAlign.center,
                        "Lahore,Pakistan",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6351ec),
                        ),
                      ),
                    ],
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
