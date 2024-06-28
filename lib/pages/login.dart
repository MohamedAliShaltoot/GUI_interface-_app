import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                          "Log in",
                          style: TextStyle(fontSize: 33),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        SvgPicture.asset(
                            "assets/assets/assets/icons/login.svg"),
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
                            "       Login           ",
                            style: TextStyle(
                                fontSize: 33, color: Colors.grey[850]),
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
                            Text("Do not have any account? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signUp");
                              },
                              child: Text(
                                " sign up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 22,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child:
                        Image.asset("assets/assets/assets/images/main_top.png"),
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
    );
  }
}
