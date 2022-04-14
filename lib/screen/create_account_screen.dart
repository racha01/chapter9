import 'package:chapter9/class/color.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String email = "";
  String password = "";
  final _controller = TextEditingController();
  ColorApp colApp = ColorApp();

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final text = _controller.value.text;
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Account"),
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
                  )
              ),
              SizedBox(
                height: 2,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 214),
              //   child: Container(
              //     child: Text(
              //       "มีบัญชีนี้อยู่เเล้ว",
              //       style: TextStyle(color: Colors.red),
              //     ),
              //   ),
              // ),
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
                height: 2,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 214),
              //   child: Container(
              //     child: Text(
              //       "มีบัญชีนี้อยู่เเล้ว",
              //       style: TextStyle(color: Colors.red),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 47,
                child: ElevatedButton(
                  onPressed: () async {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => CreateAccountScreen(),
                    //     ));
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
