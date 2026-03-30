import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100, width: 100, child: Scaffold()),
              SizedBox(width: 100,),
              Theme(
                data: Theme.of(context).copyWith(
                  scaffoldBackgroundColor: Colors.yellow,
                  textTheme: TextTheme(
                    bodyMedium: TextStyle(color: Colors.white),
                  ),
                ),
                child: SizedBox(height: 100, width: 100, child: Scaffold()),
              ),
            ],
          ),
        ],
      );
  }
}
