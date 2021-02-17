import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/resoureces/container.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:url_launcher/url_launcher.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  var islamicDate;
  var geographicDate;
  _fetchData() async {
    final response = await http.get("http://api.aladhan.com/v1/gToH?date");
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        islamicDate = map['data']['hijri'];
        geographicDate = map['data']['gregorian'];
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }
  @override
  void initState() {
    super.initState();
    _fetchData();
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Books",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              islamicDay:    islamicDate['day'],
              islamicMonth:   islamicDate['month']['en'],
              islamicYear:  islamicDate['year'] ,
              geographicWeakDay:   geographicDate['weekday']['en'],
              geoDay:   geographicDate['day'],
              geoMonth:   geographicDate['month']['en'],
              geoyear:   geographicDate['year'],
            ),
            Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 90,),
                    RightIconContainer(
                      press: () {
                        _launchURL("http://rah-e-haq.com/anwar-e-ayub");
                      },
                      Width: 270,
                      text: "          ANWAR-E-AYUB",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LeftIconContainer(
                      press: () {
                        _launchURL("http://rah-e-haq.com/risala-e-anwar-e-ayub");
                      },
                      Width: 270,
                      color: Colors.amber.shade600,
                      text: "RISALA-E-ANWAR-E-AYUB                 ",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
                    SizedBox(width: 90,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 90,),
                    RightIconContainer(
                      press: () {
                        _launchURL("http://rah-e-haq.com/farmudat-e-ayub/");
                      },
                      Width: 270,
                      text: "          FARMUDAT-E-AYUB",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                      color: Colors.brown.shade900,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LeftIconContainer(
                      press: () {
                        _launchURL("http://rah-e-haq.com/malfozat-e-ayub/");
                      },
                      Width: 270,
                      color: Colors.amber.shade600,
                      text: "MALFOZATE-E-AYUB           ",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
                    SizedBox(width: 90,),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
