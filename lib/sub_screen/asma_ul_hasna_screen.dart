import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';

class Asma_ul_husna extends StatefulWidget {
  @override
  _Asma_ul_husnaState createState() => _Asma_ul_husnaState();
}

class _Asma_ul_husnaState extends State<Asma_ul_husna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Asma-ul-Hasna",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: ListView.builder(
          itemCount: asmaulhusna.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    asmaulhusna[index]['arabic'],
                    style: TextStyle(
                        fontFamily: 'Nastaleeq',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(asmaulhusna[index]['urdu'],style: TextStyle(
                      fontFamily: 'Jameel',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  Text(asmaulhusna[index]['english'],style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text(asmaulhusna[index]['trans'],style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
            );
          }),
    );
  }
}
