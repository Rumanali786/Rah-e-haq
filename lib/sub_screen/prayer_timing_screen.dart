import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerTiming extends StatefulWidget {
  @override
  _PrayerTimingState createState() => _PrayerTimingState();
}

class _PrayerTimingState extends State<PrayerTiming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prayer Timings",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),
    );
  }
}
