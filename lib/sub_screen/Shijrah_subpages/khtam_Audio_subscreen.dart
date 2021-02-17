import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:google_fonts/google_fonts.dart';

class KhatamAudio extends StatefulWidget {
  @override
  _KhatamAudioState createState() => _KhatamAudioState();
}

class _KhatamAudioState extends State<KhatamAudio> with TickerProviderStateMixin{
  AnimationController _animationIconController1;
  AudioPlayer audioPlayer;
  Duration _duration = new Duration();
  Duration _position = new Duration();
  Duration _slider = new Duration(seconds: 0);
  double durationvalue;
  bool issongplaying = false;
  AudioCache audioCache;
  void initState() {
    super.initState();
    _position = _slider;
    _animationIconController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    audioPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: audioPlayer);
    audioPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    audioPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khatam Audio",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100.withOpacity(0.55),
        ),
        child: Container(
          child: Container(
            width: (MediaQuery.of(context).size.width),
            height: (MediaQuery.of(context).size.height),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage("assets/images/ground1.png"),
                      width: (MediaQuery.of(context).size.width) - 200,
                      height: (MediaQuery.of(context).size.width) - 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Slider(
                    activeColor: Colors.blue.shade900,
                    inactiveColor: Colors.grey,
                    value: _position.inSeconds.toDouble(),
                    max: _duration.inSeconds.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        seekToSecond(value.toInt());
                        value = value;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.navigate_before,
                        size: 55,
                        color: Colors.white,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {
                              if (!issongplaying) {
                                audioPlayer.play(URL.url + "assets/sound/shijrah-shareef/urdu/khatam-shareef.mp3");
                              } else {
                                audioPlayer.pause();
                              }
                              issongplaying
                                  ? _animationIconController1.reverse()
                                  : _animationIconController1.forward();
                              issongplaying = !issongplaying;
                            },
                          );
                        },
                        child: ClipOval(
                          child: Container(
                            color: Colors.blue.shade900,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedIcon(
                                icon: AnimatedIcons.play_pause,
                                size: 55,
                                progress: _animationIconController1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        size: 55,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    audioPlayer.seek(newDuration);
  }
}

//   void getAudio() async {
//     var url = URL.url + "assets/sound/shijrah-shareef/urdu/khatam-shareef.mp3";
//     if (playing) {
//       var res = await audioPlayer.pause();
//       if (res == 1) {
//         setState(() {
//           playing = true;
//         });
//       }
//     }
//     else {
//       var res = await audioPlayer.play(url, isLocal: true);
//       if (res == 1) {
//         setState(() {
//           playing = true;
//         });
//       }
//     }
//
//     audioPlayer.onDurationChanged.listen((Duration dd) {
//       setState(() {
//         _duration = dd;
//       });
//       audioPlayer.onAudioPositionChanged.listen((Duration dd) {
//         setState(() {
//           _position = dd;
//         });
//       });
//     });
//   }
// }
