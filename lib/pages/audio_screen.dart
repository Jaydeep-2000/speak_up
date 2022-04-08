import 'package:flutter/material.dart';
import 'package:speak_up/widgets/audio_list_tile.dart';

import 'package:speak_up/utils.dart';


typedef OnTap(final AudioObject audioObject);

const Set<AudioObject> audioExamples = {
  AudioObject('Page1', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page2', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page3', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page4', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page8', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page5', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page6', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),
  AudioObject('Page7', 'adio',
      'https://cdn0.iconfinder.com/data/icons/instagram-ui-1/24/Instagram-UI_voice_note-512.png'),

};

class AudioUi extends StatelessWidget {
  final OnTap onTap;

  const AudioUi({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 6, top: 15),
          child: Text('Your Library:'),
        ),
        for (AudioObject a in audioExamples)
          AudioListTile(audioObject: a, onTap: () => onTap(a))
      ],
    );
  }
}