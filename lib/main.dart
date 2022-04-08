import 'package:flutter/material.dart';
import 'package:speak_up/pages/home.dart';
import 'package:speak_up/pages/splash.dart';
import 'package:speak_up/pages/help.dart';
// import 'package:speak_up/pages/audio_player.dart';
import 'package:speak_up/pages/audio_library.dart';
import 'package:speak_up/pages/image_preview.dart';
import 'package:speak_up/pages/text_preview.dart';
// import 'package:speak_up/utils.dart';


//run app
void main() => runApp(MaterialApp(
  //font for the app
  title: 'SpeakUp',
  theme: ThemeData(fontFamily: 'Gotham Medium Regular'),
  //Routes or pages
  initialRoute: '/',
  routes: {
    '/':(context) => Splash(),
    '/home': (context) => Home(),
    '/help': (context) => Help(),
    // '/player': (context) => AudioPlayer(),
    '/audio_library': (context) => AudioLibrary(),
    '/image_preview': (context) => ImagePreview(),
    '/text_preview' : (context) => TextPreview(),
  },
));


