import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shahdat extends StatefulWidget {
  @override
  _ShahdatState createState() => _ShahdatState();
}

class _ShahdatState extends State<Shahdat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shahadah",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: Image.asset(
        "assets/images/shadat.jpg",
        height: 275,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
