import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UmrahScreen extends StatefulWidget {
  @override
  _UmrahScreenState createState() => _UmrahScreenState();
}

class _UmrahScreenState extends State<UmrahScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Umrah",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),

    );
  }
}
