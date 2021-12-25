import 'package:flutter/material.dart';
import 'package:speak_up/pages/home.dart';
import 'package:speak_up/pages/splash.dart';
import 'package:speak_up/pages/help.dart';
import 'package:speak_up/pages/audio_player.dart';
import 'package:speak_up/pages/audio_library.dart';


void main() => runApp(MaterialApp(
  theme: ThemeData(fontFamily: 'Gotham Medium Regular'),
  initialRoute: '/',
  routes: {
    '/':(context) => Splash(),
    '/home': (context) => Home(),
    '/help': (context) => Help(),
    '/player': (context) => AudioPlayer(),
    '/audiolibrary': (context) => AudioLibrary(),
  },
));


