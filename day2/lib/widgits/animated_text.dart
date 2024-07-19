import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidgid extends StatelessWidget {
  const AnimatedTextWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Text')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedTextKit(animatedTexts: [
              TyperAnimatedText('Welcome Home',
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                  speed: const Duration(milliseconds: 300))
            ], totalRepeatCount: 20, pause: const Duration(milliseconds: 5)),
          ),
          AnimatedTextKit(animatedTexts: [
            RotateAnimatedText(
              'Preyanka',
              textStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              //speed: const Duration(milliseconds: 60)
            ),
            RotateAnimatedText(
              'I missed you',
              textStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ], totalRepeatCount: 20, pause: const Duration(milliseconds: 5))
        ],
      ),
    );
  }
}
