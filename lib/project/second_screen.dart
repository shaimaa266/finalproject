import 'package:finalproject/project/screen_three.dart';
import 'package:finalproject/project/signup_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondscreenstate();
  }
}

class secondscreenstate extends State {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
            width: 150,
          ),
          Image.asset("assets/images/Status Bar Light.png"),
          SizedBox(
            height: 30,
            width: 100,
          ),
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                height: 50,
              )),
              Image.asset("assets/images/Logo Color.png"),
            ],
          ),
          SizedBox(
            height: 20,
            width: 40,
          ),
          Center(
              child: SizedBox(
                  height: 350,
                  width: 310,
                  child: Image.asset("assets/images/Vector Image.png"))),
          //Text("Plan  Your Trip",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: SizedBox(
                height: 100,
                width: 160,
                child: Image.asset("assets/images/Text.png"),
              ),
            ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
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
                      MaterialPageRoute(builder: (_) => ScreenThree()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white70)),
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
