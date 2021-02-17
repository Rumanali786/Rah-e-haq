import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';
import 'package:http/http.dart' as http;
import 'package:rah_e_haq/sub_screen/quran_subpages/surat_details.dart';

class SuratScreen extends StatefulWidget {
  @override
  _SuratScreenState createState() => _SuratScreenState();
}

class _SuratScreenState extends State<SuratScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quran-e-Pak",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: ListView.builder(
          itemCount: surahs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuratDetail(surahNumber: index+1,),
                  ),
                );
              },
              child: Container(
                height: 80,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                surahs[index]['number'].toString(),
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                                textDirection: TextDirection.ltr,
                              ),
                              Text(
                                " . ",
                                style: TextStyle(fontSize: 22),
                              ),
                              Text(
                                surahs[index]['englishName'],
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                surahs[index]['numberOfAyahs'].toString(),
                                style: TextStyle(fontSize: 22),
                                textDirection: TextDirection.ltr,
                              ),
                              Text(
                                "   Verses",
                                style: TextStyle(fontSize: 22),
                                textDirection: TextDirection.ltr,
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          surahs[index]['name'],
                          style: TextStyle(
                              fontFamily: "jameel",
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
