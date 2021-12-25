import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Help'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(16, 30, 0, 20),
            child: Text(
                "How to use ?",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),
      Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
                "1. Click on plus button to upload a file.",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                ),
              ),

        )
    ),
          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "2. Select a file(images only).",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),
          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "3. In preview screen you can play around with your image",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),

          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "4. Click on 'Scan for Text' to extract text from image.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),
          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "5. On 'Text Preview Screen' can copy text by clicking on 'Copy Button'.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),
          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "6. Click on 'Convert to Audio' to convert text to audio.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),

          Card(
              margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "7. You can access these audio files through audio library and you can navigate to audio libary by clicking on 'Play Button' on homescreen.",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey[600],
                  ),
                ),

              )
          ),
        ],
      ),
    );
  }
}
