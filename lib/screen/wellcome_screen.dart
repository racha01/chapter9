import 'package:chapter9/class/color.dart';
import 'package:chapter9/screen/index_screen.dart';
import 'package:flutter/material.dart';

class WellComeScreen extends StatefulWidget {
  const WellComeScreen({Key? key}) : super(key: key);

  @override
  State<WellComeScreen> createState() => _WellComeScreenState();
}

class _WellComeScreenState extends State<WellComeScreen> {
  ColorApp colApp = ColorApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Well Come'),
        backgroundColor: colApp.colorApp(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('sak@gmail.com'),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 47,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IndexScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  primary: colApp.colorApp(),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30),
                  child: Text(
                    "Back",
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
      ),
    );
  }
}
