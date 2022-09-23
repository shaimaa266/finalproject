import 'dart:convert';

import 'package:finalproject/project/location.dart';
import 'package:finalproject/project/signup_screen.dart';
import 'package:finalproject/project/singin_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignIn extends StatefulWidget {
  String? token;

  SignIn({Key? key, this.token}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool isLoading = false;
  bool ispassword = true;
  bool ischecked = true;
  SigninResponse? listModel;

  void initState() {
    // TODO: implement initState
    super.initState();
    print("PassedToken:${widget.token}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF4458DB),
                Color(0xFFB444DB),
              ],
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/wihtet status bar.png'),
            SizedBox(
              height: 20,
              width: 100,
            ),
            Image.asset('assets/images/Logo White.png'),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 17,
              width: 200,
              child: const DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      ))),
            ),
            SizedBox(
              height: 35,
              width: 250,
              child: const DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      ))),
            ),
            Container(
              height: 380,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 17,
                      width: 200,
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48),
                                topRight: Radius.circular(48),
                              ))),
                    ),
                    SizedBox(
                      height: 15,
                      width: 250,
                      child: const DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48),
                                topRight: Radius.circular(48),
                              ))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48),
                            topRight: Radius.circular(48),
                            bottomLeft: Radius.circular(48),
                            bottomRight: Radius.circular(48),
                          )),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(hintText: "Email"),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains("@")) {
                                    return "Enter Valid Email";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  setState(() {
                                    email = value!;
                                  });
                                },
                              ),
                            ),
                            Container(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                obscureText: ispassword,
                                decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      child: Icon(ispassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined),
                                      onTap: () {
                                        setState(() {
                                          ispassword = !ispassword;
                                        });
                                      },
                                    ),
                                    hintText: "password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Valid Password";
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  setState(() {
                                    password = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: isLoading
                                ? Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : ElevatedButton(
                                    onPressed: ischecked
                                        ? () {
                                            /*setState(() {
                                    if(formKey.currentState!.validate()){
                                      formKey.currentState!.save();
                                    //  getServices();

                                    }});*/
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        Location()));
                                          }
                                        : null,
                                    child: SizedBox(
                                      height: 40,
                                      width: 250,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Text(
                                            'Sign in',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
            Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Don't have account?",
                  style: TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignUpScreen()));
                    },
                    child: Text(
                      "sign up ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }

  Future getServices() async {
    setState(() {
      isLoading = true;
    });
    Response SignInResponse =
        await post(Uri.parse("http://alcaptin.com/api/login"), body: {
      "email": "a@a.com",
      "password": "123456"
    }, headers: {
      "Accept": "application/json",
      "Authorization": "Bearer ${widget.token}"
    });
    dynamic convertedJson = jsonDecode(SignInResponse.body);

    if (SignInResponse.statusCode == 200) {
      SigninResponse listModel = SigninResponse.fromJson(jsonDecode);
      print(listModel.data!.accessToken);
    } else {
      print(convertedJson["message"]);
    }
    setState(() {
      isLoading = false;
    });
  }
}
