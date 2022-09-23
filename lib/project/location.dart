import 'package:finalproject/project/date_booking_screen.dart';
import 'package:finalproject/project/favorites.dart';
import 'package:finalproject/project/menu_bar.dart';
import 'package:finalproject/project/tours.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<Widget> location = [
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/usa.png"),
          ),
        ),
      ],
    ),
    SizedBox(
      height: 5,
    ),
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/france.png"),
          ),
        ),
      ],
    ),
    SizedBox(
      height: 5,
    ),
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/india.png"),
          ),
        ),
      ],
    ),
    SizedBox(
      height: 5,
    ),
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/england.png"),
          ),
        ),
      ],
    ),
    SizedBox(
      height: 5,
    ),
    Stack(
      children: [
        Center(
          child: Container(
            child: Image.asset("assets/images/australia.png"),
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              width: 200,
            ),
            Text(
              'LOCATION',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext ctx, int index) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        (location[index]),
                      ],
                    ),
                  );
                },
                itemCount: location.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                child: ButtonBar(
                  children: [
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => ToursScreen()));
                            },
                            child: Image.asset("assets/images/home.png"))),
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Favorites()));
                            },
                            child: Image.asset("assets/images/heart.png"))),
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DateBookingScreen()));
                            },
                            child: Image.asset("assets/images/Calendar.png"))),
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => MenuBarScreen()));
                            },
                            child: Image.asset("assets/images/avatar.png"))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
