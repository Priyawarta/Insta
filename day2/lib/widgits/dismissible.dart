import 'package:flutter/material.dart';

class DismissibleWidgit extends StatefulWidget {
  const DismissibleWidgit({super.key});

  @override
  State<DismissibleWidgit> createState() => _DismissibleWidgitState();
}

class _DismissibleWidgitState extends State<DismissibleWidgit> {
  List<String> fruits = ['orange', 'mango', 'banana', 'litchi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dismissable'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];

            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruit[index]),
                      backgroundColor: Colors.blue,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruit[index]),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                key: Key(fruit),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
    );
  }
}
