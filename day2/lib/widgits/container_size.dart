import 'package:flutter/material.dart';

class container_size extends StatelessWidget {
  const container_size({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 125, 115, 115),
          title: Text('container and sizebox'),
        ),
        body: Center(
          child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
              child: const Center(
                child: Text(
                  'hello',
                  style: TextStyle(fontSize: 30),
                ),
              )),
        )

        //Center(
        //child: SizedBox(
        // height: 100,
        // width: 100,
        //child: Text('hello world'),
        );
  }
}
