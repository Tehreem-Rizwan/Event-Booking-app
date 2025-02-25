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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Container(width: MediaQuery.of(context).size.width)
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
