import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasbehatScreen extends StatefulWidget {
  @override
  _TasbehatScreenState createState() => _TasbehatScreenState();
}

class _TasbehatScreenState extends State<TasbehatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tasbehat",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),

    );
  }
}
