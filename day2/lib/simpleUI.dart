import 'package:flutter/material.dart';

class SimpleUi extends StatefulWidget {
  const SimpleUi({super.key});

  @override
  State<SimpleUi> createState() => _SimpleUiState();
}

class _SimpleUiState extends State<SimpleUi> {
  @override
  Widget build(BuildContext context) {
    Size hB = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 440,
                    //color: const Color.fromARGB(255, 1, 1, 1),
                    child: Stack(
                      children: [
                        Positioned(
                            child: Container(
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 30,
                                  color: Color.fromARGB(255, 7, 38, 57),
                                  spreadRadius: 4.0,
                                )
                              ],
                              color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage('assets/macchapuchre.JPG'),
                                  fit: BoxFit.cover)),
                          height: 400,
                        )),
                        const Positioned(
                          bottom: 5,
                          right: 10,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/IMG_5979.JPG'),
                            radius: 45,
                          ),
                        ),
                        const Positioned(
                            top: 40,
                            left: 20,
                            child: Icon(Icons.arrow_back_rounded)),
                        const Positioned(
                            top: 40,
                            right: 20,
                            child: Icon(Icons.favorite_border_outlined))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              // padding: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Machapucchre range',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'From Mardi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: hB.height * 0.01,
                    ),
                    Text(
                      'Beautifull mountain of Nepal',
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rowIconText('Like', Icons.thumb_up),
                      rowIconText('comment', Icons.comment),
                      rowIconText('share', Icons.share)
                    ],
                  )),
            ),
            Divider(),
            Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                    "The Annapurna Range, nestled in the heart of the Himalayas, is a breathtaking marvel. Its snow-capped peaks, including Annapurna I, soar majestically into the skies, casting a serene and awe-inspiring presence.")),
            // Divider(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Row(
                children: [
                  Text("Image by: Prabesh Ban", style: TextStyle(fontSize: 8)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Location: Mardi",
                    style: TextStyle(fontSize: 8),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
