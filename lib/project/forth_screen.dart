import 'package:finalproject/project/signin.dart';
import 'package:finalproject/project/signup_screen.dart';
import 'package:flutter/material.dart';

class ForthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return forthscreenstate();
  }
}

class forthscreenstate extends State {
  @override
  Widget build(BuildContext context) {
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
          Center(child: Image.asset("assets/images/Logo Color.png")),
          SizedBox(
            height: 20,
            width: 40,
          ),
          Center(
              child: SizedBox(
                  height: 350,
                  width: 320,
                  child: Image.asset("assets/images/female_image.png"))),
          Center(
            child: SizedBox(
              height: 100,
              width: 160,
              child: Image.asset("assets/images/enjoy text.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
            child: SizedBox(
                height: 40,
                width: 340,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SignIn()));
                    },
                    child: Center(
                        child: Text(
                      "LET'S GO!....",
                      style: TextStyle(color: Colors.blue),
                    )))),
          )
        ],
      ),
    );
  }
}
