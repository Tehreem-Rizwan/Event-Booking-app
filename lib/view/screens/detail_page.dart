import 'package:event_booking_app/constants/app_colors.dart';
import 'package:event_booking_app/constants/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                height: MediaQuery.of(context).size.height / 2,
                Assets.imagesEvent,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 40, left: 20.0),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.black45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Concerts",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kSecondaryColor),
                          ),
                          Row(children: [
                            Icon(Icons.calendar_month, color: kSecondaryColor),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "27 Feb 2025",
                              style: TextStyle(
                                  fontSize: 19, color: Colors.white70),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(Icons.location_on_outlined,
                                color: kSecondaryColor),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Lahore, Pakistan",
                              style: TextStyle(
                                  fontSize: 19, color: Colors.white70),
                            ),
                          ]),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
            Text(
              textAlign: TextAlign.center,
              "About Event",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
