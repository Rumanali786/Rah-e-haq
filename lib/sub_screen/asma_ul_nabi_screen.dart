import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';

class Asma_ul_nabi extends StatefulWidget {
  @override
  _Asma_ul_nabiState createState() => _Asma_ul_nabiState();
}

class _Asma_ul_nabiState extends State<Asma_ul_nabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asma-ul-Nabi",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),
      body: ListView.builder(
          itemCount: asmaulnabi.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    asmaulnabi[index]['arabic'],
                    style: TextStyle(
                        fontFamily: 'Nastaleeq',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(asmaulnabi[index]['urdu'],style: TextStyle(
                      fontFamily: 'Jameel',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  Text(asmaulnabi[index]['english'],style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text(asmaulnabi[index]['trans'],style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
            );
          }),
    );
  }
}
