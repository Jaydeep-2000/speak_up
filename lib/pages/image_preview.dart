import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:speak_up/utils.dart';

class ImagePreview extends StatefulWidget {

  ImagePreview({Key? key}) : super(key: key);

  //field to hold the input file object

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {

  // File image;
  var selectedFile;

  @override
  Widget build(BuildContext context) {

    final inputFile = ModalRoute.of(context)!.settings.arguments as InputFile;

    selectedFile = File(inputFile.directory);


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
            'Preview',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 40),
        child: Center(
        child:Container(
          child: Image.file(
            selectedFile,
          ),
        ),
        ),
      ),

      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 40, 20),
        child: FloatingActionButton(
          onPressed: inputFile.uploadFile,
          child: const Icon(
              Icons.search,
          size:40),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}




