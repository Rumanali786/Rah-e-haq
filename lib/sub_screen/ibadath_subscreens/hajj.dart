import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class HajjScreen extends StatefulWidget {
  @override
  _HajjScreenState createState() => _HajjScreenState();
}

class _HajjScreenState extends State<HajjScreen> {
  VideoPlayerController playerController;
  VoidCallback listener;

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hajj",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),
body:  Center(
    child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          child: (playerController != null
              ? VideoPlayer(
            playerController,
          )
              : Container()),
        ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createVideo();
          playerController.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          "https://apiastana.codensoft.com/assets/videos/hajj.mp4")
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }
}
