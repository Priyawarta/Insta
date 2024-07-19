import 'package:day2/widgits/grid.dart';
import 'package:day2/widgits/image.dart';
import 'package:day2/widgits/list_grid.dart';
import 'package:day2/widgits/page.dart';
import 'package:flutter/material.dart';

int selectedindex = 0;
List<Widget> Widgits = [
  Text('Home'),
  Text('Search'),
  Text('Add'),
  Text('Profile'),
];

void onItemTapped(int index) {}

class BottomNavigatorWidgid extends StatefulWidget {
  const BottomNavigatorWidgid({super.key});

  @override
  State<BottomNavigatorWidgid> createState() => _BottomNavigatorWidgidState();
}

class _BottomNavigatorWidgidState extends State<BottomNavigatorWidgid> {
  int selectedindex = 0;
  PageController pageController = PageController();
  // List<Widget> Widgits = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: PageView(
        controller: pageController,
        children: [
          MyGrid(),
          ImageWidgid(),
          MyPage(),
          ListGridState(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile')
        ],
        currentIndex: selectedindex,
        //  backgroundColor: Color.fromARGB(255, 32, 117, 187),
        selectedItemColor: const Color.fromARGB(255, 14, 109, 17),
        unselectedItemColor: Color.fromARGB(255, 2, 36, 4),
        onTap: onItemTapped,
      ),
    );
  }
}
