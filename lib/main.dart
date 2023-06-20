// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(naghamat());
}

class naghamat extends StatefulWidget {
  const naghamat({super.key});

  @override
  State<naghamat> createState() => _naghamatState();
}

class _naghamatState extends State<naghamat> {
  void playMusic() {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    audioPlayer.open(Audio('assets/assets_music-1.mp3'));
    audioPlayer.play();
  }

  Widget myButton(int music,String name,Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom:1.0),
        child: ElevatedButton(
          onPressed: () {
            AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
            audioPlayer.open(Audio('assets/assets_music-$music.mp3'));
            audioPlayer.play();
          },
          style: ElevatedButton.styleFrom(
            
            backgroundColor: Colors.white, // Change this to your desired color
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
              children: [
                Icon(Icons.music_note,
                color: color,
                ),
                SizedBox(width: 20,),
                Text(
                  name,
                  style: TextStyle(color: color, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        title: Text("naghamate"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        myButton(1,"samsung", Colors.red),
        myButton(2,"nokia",Colors.yellow),
        myButton(3,"whatsapp",Colors.blue),
        myButton(4,"iphone 6",Colors.black),
        myButton(5,"one Plus",Colors.brown),
        myButton(6,"Xiaomi",Colors.green),
        myButton(7,"infinix",Colors.orange),
        
        
      ]),
    ));
  }
}
