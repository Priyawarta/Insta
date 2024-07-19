import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcome to Annapurna'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/annapurna.jpg'),
          Image.asset('assets/annapurnaone.JPG'),
          Image.asset('assets/annapurna3.JPG'),
        ],
      ),
    );
  }
}
