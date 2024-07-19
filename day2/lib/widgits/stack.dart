import 'package:flutter/material.dart';

class StackWidgid extends StatelessWidget {
  const StackWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: Stack(
          children: [
            Positioned(
                child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/macchapuchre.JPG'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
                left: 20,
                top: 20,
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.black,
              ),
            )
          ],
        ));
  }
}
