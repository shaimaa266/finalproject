import 'package:finalproject/project/forth_screen.dart';
import 'package:finalproject/project/signin.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40, width: 150),
            Image.asset("assets/images/Status Bar Light.png"),
            SizedBox(height: 30, width: 100),
            Image.asset('assets/images/Logo Color.png'),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/vectorTwo.png')),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select The Date",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Select the day, book your ticket. We give ",
              style: TextStyle(fontSize: 12, color: Colors.black38),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "you the  best price. you guarantied!",
              style: TextStyle(fontSize: 12, color: Colors.black38),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isChecked = true;
                      });
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white70)),
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 190,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ForthScreen()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.white70)),
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
