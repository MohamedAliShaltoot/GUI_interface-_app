//import 'package:flutter/cupertino.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
            body: SafeArea(
              child: Scaffold(
                body: Container(
                  height: double.infinity,
                  width: double.infinity,
                  // color: Colors.amber,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 22,
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 33, color: Colors.grey[800]),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            SvgPicture.asset(
                              "assets/assets/assets/icons/signup.svg",
                              width: 60,
                              height: 230,
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.purple[800],
                                  ),
                                  hintText: "Enter your E-mail:",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(66),
                              ),
                              width: 266,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.purple[800],
                                  ),
                                  hintText: "Enter your password:",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/login");
                              },
                              child: Text(
                                "       sign up           ",
                                style: TextStyle(
                                    fontSize: 33,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.purple)),
                            ),
                            SizedBox(
                              height: 22,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("already have an account? "),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/login");
                                  },
                                  child: Text(
                                    " Log in",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              width: 277,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.purple[900],
                                    ),
                                  ),
                                  Text(
                                    "OR",
                                    style: TextStyle(
                                      color: Colors.purple[900],
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 0.5,
                                      color: Colors.purple[900],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 3,
                            ),

//
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 22),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/assets/assets/icons/facebook.svg",
                                        color: Colors.blue[400],
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 22,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/assets/assets/icons/google-plus.svg",
                                        color: Color.fromARGB(255, 32, 96, 161),
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 22,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.purple, width: 1)),
                                      child: SvgPicture.asset(
                                        "assets/assets/assets/icons/twitter.svg",
                                        color: Colors.blue[400],
                                        height: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Image.asset(
                            "assets/assets/assets/images/main_top.png"),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Image.asset(
                            "assets/assets/assets/images/login_bottom.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
