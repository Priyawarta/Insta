import 'package:flutter/material.dart';

class ImageWidgid extends StatelessWidget {
  const ImageWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('image')),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30,
                  color: Colors.white,
                  spreadRadius: 4.0,
                )
              ],
              image: const DecorationImage(
                image: NetworkImage(
                  'https://as1.ftcdn.net/v2/jpg/02/60/10/44/1000_F_260104427_V4u8SJzRa6HaEpfy3kK4g2ioTcJOcanx.jpg',
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
