// import 'package:day2/simpleUI.dart';
import 'package:day2/widgits/insta.dart';
//import 'package:day2/widgits/image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false, // This line disables the debug banner
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Ensure this is set to false here as well
      title: 'flutter widgits',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      home: InstaProfile(),
    );
  }
}
