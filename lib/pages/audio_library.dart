import 'package:flutter/material.dart';
import 'package:speak_up/pages/audio_screen.dart';
import 'package:speak_up/widgets/player.dart';
import 'package:speak_up/utils.dart';

ValueNotifier<AudioObject?> currentlyPlaying = ValueNotifier(null);

const double playerMinHeight = 70;
const double playerMaxHeight = 370;
const miniplayerPercentageDeclaration = 0.2;



class AudioLibrary extends StatefulWidget {
  @override
  _AudioLibraryState createState() => _AudioLibraryState();
}

class _AudioLibraryState extends State<AudioLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(
                  title: Text('Miniplayer'),
                backgroundColor: Colors.amber,
              ),
              Expanded(
                child: AudioUi(
                  onTap: (audioObject) => currentlyPlaying.value = audioObject,
                ),
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: currentlyPlaying,
            builder: (BuildContext context, AudioObject? audioObject,
                Widget? child) =>
            audioObject != null
                ? DetailedPlayer(audioObject: audioObject)
                : Container(),
          ),
        ],
      ),

    );
  }
}