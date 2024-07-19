import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({super.key});

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        backgroundColor: Color.fromARGB(255, 4, 39, 67),
        elevation: 12,
      ),
      body: Container(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
              child: Center(child: Text('Annapurna')),
            ),
            Card(
              child: Center(child: Text('Macchapuchre')),
            ),
            Card(
              child: Center(child: Text('Langtang')),
            ),
            Card(
              child: Center(child: Text('Mardi')),
            )
          ],
        ),
      ),
    );
  }
}
