import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidgid extends StatefulWidget {
  const ImagePickerWidgid({super.key});

  @override
  State<ImagePickerWidgid> createState() => _ImagePickerWidgidState();
}

class _ImagePickerWidgidState extends State<ImagePickerWidgid> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Center(
                  child: file == null
                      ? Text('Image not picked')
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('image picked');
                },
                child: Text('Pick Image')),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile>? photos = await _picker.pickMultiImage();
                  await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    files = photos;
                  });
                  print('image picked');
                  for (int i = 0; i < files!.length; i++) {
                    print(files![i].path);
                  }
                },
                child: Text('Pick Images'))
          ],
        ),
      ),
    );
  }
}
