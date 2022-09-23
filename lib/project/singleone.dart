import 'package:finalproject/project/singin_response.dart';
import 'package:flutter/material.dart';

class SingleOne extends StatefulWidget {
  String? id;

  SingleOne({Key? key, this.id}) : super(key: key);

  @override
  State<SingleOne> createState() => _SingleOneState();
}

class _SingleOneState extends State<SingleOne> {
  SigninResponse? convertedjson;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    // itemCount: convertedjson?.data!.length,
                    itemBuilder: (context, index) {
                      // dynamic jsonitem=convertedjson!.data![index];
                      return Row(
                        children: [
                          Center(
                              // child: Image.asset(convertedjson!["data!"]["images"]),

                              ),
                        ],
                      );
                    }),
              ),
              /*Expanded(
              child: Text(convertedjson!["data!"]["name"],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ),*/
            ]),
            Padding(padding: EdgeInsets.all(70)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*Text(
                convertedjson!["data!"]["name"]
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),*/
                Padding(padding: EdgeInsets.all(15)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    /* Text(
                    "Departure:${convertedjson!["data!"]["description"]}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),*/
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "23rd Oct 2017",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Duration ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    /*Text(
                  convertedjson["data!"]["distance"] ,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),*/
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Discover 7 World Heritage Sites in this",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "tour.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    /* Text(
                    "Fans of shopping can visit ${convertedjson!.data!.name} which is",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),*/
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "located 12 km from central mansoura, with connecting",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
