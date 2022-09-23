import 'package:flutter/material.dart';

class DateBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Center(
        child: Flexible(
            child: Text(
          "Don't worry !..we saved your date ...we will remind you ,Have agood day !",
          style: TextStyle(
              fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
