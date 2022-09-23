import 'dart:convert';
import 'package:finalproject/project/location.dart';
import 'package:finalproject/project/signupResponse.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return signupscreenstate();
  }
}

class signupscreenstate extends State {
  final formKey = GlobalKey<FormState>();
  String Name = "";
  String Email = "";
  String password = "";
  String phoneNumber = "";
  bool isPassword = true;
  bool isLoading = false;
  PageController? controller;
  bool checkedbox = true;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48),
                          topLeft: Radius.circular(48),
                          topRight: Radius.circular(48),
                          bottomRight: Radius.circular(48))),
                  height: 740,
                  width: 360,
                  child: Image.asset('assets/images/mainscreen.png')),
            ],
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                  width: 100,
                ),
                Image.asset('assets/images/wihtet status bar.png'),
                SizedBox(
                  height: 20,
                  width: 100,
                ),
                Center(
                  child: Image.asset("assets/images/Logo White.png"),
                ),
                SizedBox(
                  height: 20,
                  width: 100,
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
                  height: 320,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "Sign UP",
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
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(hintText: "Name"),
                                  validator: (value) {},
                                  onSaved: (value) {
                                    setState(() {
                                      Name = value!;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration:
                                      InputDecoration(hintText: "Email"),
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
                                      Email = value!;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  obscureText: isPassword,
                                  decoration: InputDecoration(
                                      suffixIcon: GestureDetector(
                                        child: Icon(isPassword
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined),
                                        onTap: () {
                                          setState(() {
                                            isPassword = !isPassword;
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
                              Container(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration:
                                      InputDecoration(hintText: "Phone Number"),
                                  validator: (value) {},
                                  onSaved: (value) {
                                    setState(() {
                                      phoneNumber = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Checkbox(
                      onChanged: (bool? value) {
                        setState(() {
                          checkedbox = value!;
                        });
                      },
                      value: checkedbox),
                  title: Text('I had read and  accepted the policy '),
                ),
                Row(
                  children: [
                    Expanded(child: SizedBox(height: 20)),
                  ],
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
                          onPressed: checkedbox
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
                                  width: 280,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      SizedBox(
                                          height: 20,
                                          child: Icon(Icons
                                              .keyboard_double_arrow_right))
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Future SignUp() async {
    setState(() {
      isLoading = true;
    });

    Response response =
        await post(Uri.parse(" http://alcaptin.com/api/register"), body: {
      "email": Email,
      "password": password,
      "first_name": "shimaa",
      "last_name": "esaeed",
      "age": "20",
      "gender": "female",
    });
    dynamic jsonResponse = jsonDecode(response.body);
    // if (SignupResponse.statusCode== 200) {
    SignupResponse signupResponse = SignupResponse.fromJson(jsonResponse);
    // print(signupResponse.data!.accessToken);
    //}else {
    //  print(jsonResponse["message"]);
    //}

    setState(() {
      isLoading = false;
    });
  }
}
