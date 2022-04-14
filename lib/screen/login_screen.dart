import 'package:chapter9/class/color.dart';
import 'package:chapter9/screen/wellcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  ColorApp colApp = ColorApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: colApp.colorApp(),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  padding: EdgeInsets.all(4.0),
                  height: 45,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.email),
                      // hintText: 'What do people call you?',
                      labelText: 'Email',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                  padding: EdgeInsets.all(4.0),
                  height: 45,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.key),
                      // hintText: 'What do people call you?',
                      labelText: 'Password',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 47,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WellComeScreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: colApp.colorApp(),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30),
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
            ],
          ),
        ));
  }
}
