import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_player/SongList.dart';

class Player extends StatefulWidget {
  final index;

  const Player({this.index, Key? key}) : super(key: key);

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  Duration _duration = const Duration();
  Duration _position = const Duration();
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  play() async {
    await audioPlayer.play(SongList[widget.index].songURL);
  }

  pause() async {
    await audioPlayer.pause();
  }

  @override
  void initState() {
    super.initState();
    audioPlayer.onDurationChanged.listen((d) {
      setState(() {
        _duration = d;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((p) {
      setState(() {
        _position = p;
      });
    });
    audioPlayer.setUrl(SongList[widget.index].songURL);
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(SongList[widget.index].SongIMG),
                  Column(
                    children: [
                      Center(
                        child: AutoSizeText(
                          SongList[widget.index].SongNAME,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Center(
                        child: AutoSizeText(
                          SongList[widget.index].ArtistName,
                          overflow: TextOverflow.ellipsis,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: isPlaying == false
                        ? const Icon(
                            Icons.play_circle,
                            size: 60,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.pause_circle,
                            size: 60,
                            color: Colors.white,
                          ),
                    onPressed: () {
                      if (isPlaying == false) {
                        play();
                        setState(() {
                          isPlaying = true;
                        });
                      } else {
                        pause();
                        setState(
                          () {
                            isPlaying = false;
                          },
                        );
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _position.toString().split(".")[0],
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        _duration.toString().split(".")[0],
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.white,
                    value: _position.inSeconds.toDouble(),
                    min: 0.0,
                    max: _duration.inSeconds.toDouble(),
                    onChanged: (double value) {
                      setState(
                        () {
                          Duration newDuration = Duration(seconds: value.toInt());
                          audioPlayer.seek(newDuration);
                          value = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
