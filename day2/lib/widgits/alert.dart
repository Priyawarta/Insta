import 'package:day2/widgits/image.dart';
import 'package:flutter/material.dart';

class AlertWidgid extends StatelessWidget {
  const AlertWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text('alert button')),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 124, 18, 11),
          shadowColor: const Color.fromARGB(255, 248, 182, 182),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          title: Text('this ia an alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text('Are you sure do you want to continue...')],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImageWidgid()));
                },
                child: Text('Approve')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
          ],
        );
      });
}
