import 'package:flutter/material.dart';

class MacchapuchreHimal extends StatefulWidget {
  const MacchapuchreHimal({super.key});

  @override
  State<MacchapuchreHimal> createState() => _MyPageState();
}

class _MyPageState extends State<MacchapuchreHimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to Macchapuchre himal'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Image.asset(
        'assets/macchapuchre.JPG',
      )),
    );
  }
}
