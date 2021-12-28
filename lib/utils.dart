import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AudioObject {
  final String title, subtitle, img;

  const AudioObject(this.title, this.subtitle, this.img);
}

double valueFromPercentageInRange(
    {required final double min, max, percentage}) {
  return percentage * (max - min) + min;
}

double percentageFromValueInRange({required final double min, max, value}) {
  return (value - min) / (max - min);
}

class FileObject {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  String? fileName;
  int? size;
  List<PlatformFile>? _paths;
  String? directory;
  String? extension;
  //bool _isLoading = false;
  bool _userAborted = false;
  bool _multiPick = false;
  FileType _pickingType = FileType.any;

  Future <void> pickFiles() async{

    FilePickerResult? _paths = await FilePicker.platform.pickFiles();


    if (_paths != null) {
      PlatformFile file = _paths.files.first;

     //assigning values to parameters
      this.fileName = file.name;
      this.extension = file.extension;
      this.size = file.size;
      this.directory = file.path;
    }
  }
}

class TextRecognizer{
  // String? text;
  // File? file;

  // Future <void> scanText() async {
  //
  //   final text = await FirebaseMLApi.recogniseText(file);
  // }
}