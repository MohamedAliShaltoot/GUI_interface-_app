import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: prefer_typing_uninitialized_variables
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      "Welcome",
                      style: TextStyle(fontSize: 33),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SvgPicture.asset("assets/assets/assets/icons/chat.svg"),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        " Login ",
                        style: TextStyle(fontSize: 33, color: Colors.grey[850]),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple)),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signUp");
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 33, color: Colors.grey[850]),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple)),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Image.asset("assets/assets/assets/images/main_top.png"),
              ),
              Positioned(
                bottom: 0,
                child:
                    Image.asset("assets/assets/assets/images/main_bottom.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
