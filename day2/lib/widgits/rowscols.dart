import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('rows and columns'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          height: h,
          width: w,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60,
                color: const Color.fromARGB(255, 228, 202, 200),
              ),
              Container(
                height: 60,
                width: 60,
                color: const Color.fromARGB(255, 194, 117, 112),
              ),
              Container(
                height: 60,
                width: 60,
                color: const Color.fromARGB(255, 87, 21, 16),
              )
            ],
          )),
    );
  }
}
