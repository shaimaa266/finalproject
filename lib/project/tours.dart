import 'dart:convert';

import 'package:finalproject/project/response_list.dart';
import 'package:finalproject/project/signin.dart';
import 'package:finalproject/project/singin_response.dart';
import 'package:finalproject/project/singleone.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ToursScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return tourscreenstate();
  }
}

class tourscreenstate extends State {
  SigninResponse? convertedjson;
  String? token;
  ResponseList? responseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: 200,
          ),
          Image.asset("assets/images/Status Bar Light.png"),
          Center(
            child: Text(
              "Tours",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
            ),
          ),
          Text(
            "Popular Destination",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            "3 Tours available",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 16, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/imageone.png"),
                      Text("3loosh market"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 10,
                ),
                SizedBox(
                  height: 90,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/imagetwo.png"),
                      Text("mosta7daraty"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 10,
                ),
                SizedBox(
                  height: 90,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/imagethree.png"),
                      Text("Awlad Ragab market"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            "   Discover New Places",
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 16),
            child: Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(color: Colors.grey),
              /* child:   ListView.builder(itemBuilder: (context,index){
            // InnerData item=convertedjson!.data![index];
            return GestureDetector(
              onTap: (){
                //getPlaces();
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SingleOne(/*id: item!["data!"]["data!"]["id"],*/)));
              },

            );
          }),*/
            ),
          )
        ],
      ),
    );
  }

  Future getPlaces() async {
    Response response = await get(
        Uri.parse(
          "http://alcaptin.com/api/places",
        ),
        headers: {
          "Authorization": "Bearer ${SignIn(
            token: token,
          )}"
        });
    dynamic jsonResponse = jsonDecode(response.body);
    ResponseList responseList = ResponseList.fromJson(jsonResponse);
  }
}
