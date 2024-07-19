import 'package:day2/widgits/page.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const MyPage()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.2,
                width: 100,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: 200,
              child: TextButton(
                child: Text(
                  'press me',
                  style: TextStyle(fontSize: 26),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
