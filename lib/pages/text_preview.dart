import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPreview extends StatefulWidget {
  const TextPreview({Key? key}) : super(key: key);

  @override
  _TextPreviewState createState() => _TextPreviewState();
}

class _TextPreviewState extends State<TextPreview> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Text',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.amber,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              width:350,
              height: 550,
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              child: SelectableText(
                text.isEmpty ? 'Scan an Image to get text' : text,
                textAlign: TextAlign.center,
              ),
          ),
          const SizedBox(width: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.copy, color: Colors.black),
                color: Colors.grey[200],
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mic, color: Colors.black),
                color: Colors.grey[200],
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

