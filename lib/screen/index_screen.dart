import 'package:chapter9/class/color.dart';
import 'package:chapter9/screen/create_account_screen.dart';
import 'package:chapter9/screen/login_screen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  ColorApp colApp = ColorApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: colApp.colorApp(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: colApp.colorApp(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 73, right: 73),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreateAccountScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: colApp.colorApp(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
