import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  const ImagePreview({Key? key}) : super(key: key);

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {

  // File image;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute
        .of(context)!
        .settings
        .arguments as Map;
    print(data);
    print(data['directory']);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'Preview'
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 40),
        child: Center(
        child:Container(
          child: Image.file(
            File(data['directory']),
          ),
        ),
        ),
      ),

      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(0, 20, 40, 20),
        child: FloatingActionButton(
          onPressed: () {
            print('Scan for text function');
            Navigator.pushNamed(context, '/text_preview');
          },
          child: Icon(
              Icons.search,
          size:40),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}

//   Widget imageContainer() => Container(
//     child: image != null
//         ? Image.file(image)
//         : Icon(Icons.photo, size: 150, color: Colors.black),
//   );
// }


