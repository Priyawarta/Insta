import 'package:flutter/material.dart';

class DrawerWidgit extends StatefulWidget {
  const DrawerWidgit({super.key});

  @override
  State<DrawerWidgit> createState() => _DrawerWidgitState();
}

class _DrawerWidgitState extends State<DrawerWidgit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                color: Color.fromARGB(255, 3, 84, 138),
                // padding: EdgeInsets.all(2),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://www.google.com/search?sca_esv=06f09c15634cd2c0&rlz=1C1KNTJ_enNP1078NP1078&q=Free+logo+url&uds=ADvngMj53AHIJt2KifqzVbYVXLyJl2UPtTkgXiB8SggN-SzCMTc-MclnFeuGosiqm4BEjmQUIHPnd7wwDksJ5-hpYfi6th0dLH2hMwuaRQq9O-G8d7n2sRAPISTj93J1nlXbNaqZg3IiWJ7KbakGufw36w6tXN019ogSJ1FxFI6EYeTdFTeq6fAAVg5EL6Jg-T6hHyrbE373M6GRY3CNmjGikTinF0dwCBHlC9F0a45jkS9hKtw6-GVQakubbByo9pxENp2wWZIdOmrTn_amcU3BWTIggzcPNofxlL_rfH6mTTbPeuQHgj0L2OvcOgP909QO-yj7GdaT&udm=2&prmd=ivsnbmz&sa=X&ved=2ahUKEwjon4PvxcaGAxXI4zgGHeJUD1kQtKgLegQIEBAB&biw=1280&bih=585&dpr=1.5#vhid=S-SsjF4It4kP6M&vssid=mosaic'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Hello world'), Text('welcome!!')],
                    )
                  ],
                ),
              )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text('Myfiles'),
              ),
              ListTile(
                leading: Icon(Icons.document_scanner),
                title: Text('Scanner'),
              ),
              ListTile(
                leading: Icon(Icons.upload_file),
                title: Text('Upload'),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('Email'),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
        backgroundColor: const Color.fromARGB(255, 157, 196, 228),
      ),
    );
  }
}
