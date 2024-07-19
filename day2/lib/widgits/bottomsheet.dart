import 'package:flutter/material.dart';

class BottomSheetWidgid extends StatelessWidget {
  const BottomSheetWidgid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 500,
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('orange'),
                          subtitle: Text('Hari'),
                        ),
                        ListTile(
                          title: Text('Apple'),
                          subtitle: Text('Ram'),
                        ),
                        ListTile(
                          title: Text('Mango'),
                          subtitle: Text('Usha'),
                        ),
                        ListTile(
                          title: Text('Litchi'),
                          subtitle: Text('Sita'),
                        ),
                        ListTile(
                          title: Text('Graphs'),
                          subtitle: Text('Gita'),
                        )
                      ],
                    );
                  });
            },
            child: Text('Button sheet')),
      ),
    );
  }
}
