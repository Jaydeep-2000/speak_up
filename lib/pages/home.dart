import 'package:speak_up/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void uploadFileObject() async{
    FileObject instance = new FileObject();
    await instance.pickFiles();

    //Navigate to image preview
    Navigator.pushReplacementNamed(context, '/image_preview', arguments: {
      'filename': instance.fileName,
      'extension': instance.extension,
      'size': instance.size,
      'directory': instance.directory,
    });

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
                onPressed: () {
                  uploadFileObject();
                  Navigator.pushNamed(context , '/image_preview');
                },
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
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(

                'Upload file...',
                    style:TextStyle(
                      fontSize: 25,
    )
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(

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

  