import 'package:day2/widgits/macchapuchre.dart';
import 'package:day2/widgits/page.dart';
import 'package:flutter/material.dart';

class ListGridState extends StatefulWidget {
  const ListGridState({super.key});

  @override
  State<ListGridState> createState() => _ListGridStateState();
}

class _ListGridStateState extends State<ListGridState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list and grid'),
        backgroundColor: const Color.fromARGB(255, 224, 123, 115),
        elevation: 10,
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              color: Color.fromARGB(255, 9, 73, 126),
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyPage()));
                },
                leading: Icon(Icons.abc),
                trailing: Text("hello"),
                title: Text('Annapurna'),
              ),
            ),
            Card(
              color: Color.fromARGB(255, 14, 56, 91),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MacchapuchreHimal()));
                },
                title: Text('Macchapuchre'),
                leading: Icon(Icons.abc),
                hoverColor: Colors.black87,
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 15, 63, 103),
              child: ListTile(
                title: Text('Langtang'),
                subtitle: Text('Welcome to the beautiful langtang himal'),
                leading: Icon(Icons.abc),
              ),
            )
          ],
        ),
      ),
    );
  }
}
