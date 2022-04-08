import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:speak_up/utils.dart';
import 'package:flutter/material.dart';
// import 'dart:io' as io;
// import 'package:path/path.dart' as path;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:permission_handler/permission_handler.dart';

import 'image_preview.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  createDir() async {
    //checking for permissions
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }

    //creating app folders
    String textpath = "/storage/emulated/0/SpeakUp/TextFiles";
    String audioPath = "/storage/emulated/0/SpeakUp/Audio";
    String finalPath = "/storage/emulated/0/SpeakUp"; //app folder

    var finalDir = Directory(finalPath);
    var textDir = Directory(textpath);
    var audioDir = Directory(audioPath);
    print(finalDir);
    print(textDir);
    print(audioDir);

    //main directory
    bool finaldirExists = await finalDir.exists();
    if(!finaldirExists){
      finalDir.create(/*recursive=true*/); //pass recursive as true if directory is recursive
    }

    //text sub directory
    bool textdiExists = await textDir.exists();
    if(!textdiExists){
      textDir.create(/*recursive=true*/); //pass recursive as true if directory is recursive
    }

    //audio sub directory
    bool audiodirExists = await audioDir.exists();
    if(!audiodirExists){
      audioDir.create(/*recursive=true*/); //pass recursive as true if directory is recursive
    }



  }


  Future <void> pickFiles() async{
    //getting platformfile
    FilePickerResult? _paths = await FilePicker.platform.pickFiles();

    //cheking for null
    if (_paths != null) {
      PlatformFile file = _paths.files.first;

      InputFile inputFile = new InputFile(file.name, file.size, file.path!, file.extension!);


      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImagePreview(),
          // Pass the arguments as part of the RouteSettings. The
          // DetailScreen reads the arguments from these settings.
          settings: RouteSettings(
            arguments: inputFile,
          ),
        ),
      );

  }
  }

  @override
  initState(){
    createDir(); //call your method here
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(60.0),
      child: AppBar(
        title: Text(
            "Speak Up",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize:25,
        ),),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: IconButton(

              icon: Icon(
                Icons.help,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/help');
              },
            ),
          )
        ],

        centerTitle: true,
        backgroundColor: Colors.amber,
        automaticallyImplyLeading: false,
      ),
      ),

      body: Center(
        child: Column(
          children: <Widget> [
            Container(
              margin: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
              child: Image.asset(
                  'assets/images/home.jpeg',
                width: 200.0,
                height: 275.0,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 5.0, 50, 0),
              child: TextButton(
                onPressed:pickFiles,
                child: Icon(Icons.add,
                size: 50,
                color: Colors.white),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: CircleBorder(),
                )
              ),

            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: const Text(

                'Upload file...',
                    style:TextStyle(
                      fontSize: 25,
    )
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const Text(

                  'Upload Image files only....',
                  style:TextStyle(
                    fontSize: 15,
                  )
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: Container(
        height:80,
        width: 80,
        child: FloatingActionButton(
          //
            child:SpinKitWave(
              color: Colors.white,
              size: 25.0,
            ),
          onPressed: () {
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AudioPlayer()));
            Navigator.pushNamed(context, '/audio_library');
          },

          backgroundColor: Colors.amber,
          tooltip: 'Audio Library',
        ),
      ),
    );
  }
}



  