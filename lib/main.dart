import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(OrbitAudioPiano());
}

class OrbitAudioPiano extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playAudio ({String? fileName}){
    player.play(fileName);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            PianoKey(
              KeyPress: () {
                playAudio(
                    fileName: "pianosounds/a3.mp3"
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/a4.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/a-3.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/a5.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/a-4.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/b3.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/a-5.mp3'
                );
              },
            ),
            PianoKey(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/b4.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/b5.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c3.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c4.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c-3.mp3'
                );
              },
            ),
            PianoKey(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c5.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c6.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c-4.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d3.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/c-5.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d4.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d-3.mp3'
                );
              },
            ),
            PianoKey(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d5.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/e3.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d-4.mp3'
                );
              },
            ),
            PianoKeyBlack(
              KeyPress: () {
                playAudio(
                    fileName: 'pianosounds/e4.mp3'
                );
              },
              SuperKeyPress: () {
                playAudio(
                    fileName: 'pianosounds/d-5.mp3'
                );
              },
            ),

          ],
        )
      )
    );
  }
}

class PianoKey extends StatelessWidget {
  final Function()? KeyPress;
  const PianoKey({Key? key, @required this.KeyPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0, bottom: 2.0, top: 2.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: RaisedButton(
            onPressed: KeyPress,
          ),
        ),
      ),

    );
  }
}

class PianoKeyBlack extends StatelessWidget {
  final  Function()? KeyPress;
  final  Function()? SuperKeyPress;

  const PianoKeyBlack({Key? key, @required this.KeyPress, @required this.SuperKeyPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget> [
          Padding(
            padding:
            const EdgeInsets.only(right: 8.0,bottom: 2.0, top: 2.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: RaisedButton(
                onPressed: KeyPress,
              ),
            ),
          ),
          Positioned(

            top: -15.0,
            child: Container(
              width: 200.0 ,
              height: 30.0,
              child: RaisedButton(
                color: Colors.black,
                onPressed: SuperKeyPress,
              ),
            ),
          )
        ],
      ),
    );
  }
}

