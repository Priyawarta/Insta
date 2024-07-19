import 'package:flutter/material.dart';

class TabBarwidgid extends StatelessWidget {
  const TabBarwidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 200, 189, 86),
              indicatorWeight: 10,
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'Chats',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'Calls',
                ),
                Tab(
                  icon: Icon(Icons.chat_bubble),
                  text: 'Status',
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Profile',
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Center(
                child: Text('Chats'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Calls'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Status'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Profile'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
