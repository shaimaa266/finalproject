import 'package:finalproject/project/favorites.dart';
import 'package:flutter/material.dart';

class MenuBarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return menubarscreen();
  }
}

class menubarscreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
            width: 150,
          ),
          Image.asset("assets/images/Status Bar Light.png"),
          Row(
            children: [
              SizedBox(
                height: 19,
                width: 250,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: Image.asset("assets/images/cancel.png"),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              height: 150,
              width: 220,
              child: Image.asset("assets/images/Profile.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Notification.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Tours.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Location.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Language.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Invite Friends.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Help Center.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Setting.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/Log Out.png"),
                ),
              ],
            ),
          ),
          //Nav BAR ....
        ],
      ),
    );
  }
}
