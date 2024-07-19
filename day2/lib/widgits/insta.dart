// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstaProfile extends StatelessWidget {
  const InstaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Prabesh Ban',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              //  color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: 160,
                    // color: Colors.black,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpg'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Prabesh Ban',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Loves to travel',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: const Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '150',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    'Posts',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '15k',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    'Followers',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '500',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    'Following',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                ),
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(width: 10)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 65,
                          width: 70,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/annapurna.jpg',
                                  ),
                                  fit: BoxFit.fill),
                              shape: BoxShape.circle,
                              color: Colors.black),
                        ),
                        const Text('stories')
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 35,
                          ),
                          Icon(Icons.grid_view_outlined),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.pageview_rounded),
                          SizedBox(width: 50),
                          Icon(Icons.tag_outlined),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.favorite_outline_rounded),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              // color: Colors.yellow,
              child: GridView.builder(
                  itemCount: 30,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage('assets/macchapuchre.JPG'),
                            fit: BoxFit.cover,
                          )),
                      margin: const EdgeInsets.all(3),
                      height: 100,
                      width: 100,
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
