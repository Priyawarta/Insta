import 'package:flutter/material.dart';

class SnackbarWidgid extends StatelessWidget {
  const SnackbarWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                // final snackbar =
                print('hi');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  action: SnackBarAction(
                    label: 'undo',
                    textColor: Colors.green,
                    onPressed: () {},
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red,
                  content: Text(
                    'this is a snack bar',
                    style: TextStyle(color: Colors.blue),
                  ),
                  duration: Duration(seconds: 1),
                ));
              },
              child: Text('show snackbar')),
        ),
      ),
    );
  }
}
