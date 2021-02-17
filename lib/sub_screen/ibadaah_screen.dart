import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:rah_e_haq/sub_screen/ibadath_subscreens/dua_screen.dart';
import 'package:rah_e_haq/sub_screen/ibadath_subscreens/hajj.dart';
import 'package:rah_e_haq/sub_screen/ibadath_subscreens/roza_screen.dart';
import 'package:rah_e_haq/sub_screen/ibadath_subscreens/tasbehat_screen.dart';
import 'package:rah_e_haq/sub_screen/ibadath_subscreens/umrah_screen.dart';
import 'package:rah_e_haq/resoureces/container.dart';


import 'ibadath_subscreens/namaz_screen.dart';

class Ibadaah extends StatefulWidget {
  @override
  _IbadaahState createState() => _IbadaahState();
}

class _IbadaahState extends State<Ibadaah> {
  var islamicDate;
  var geographicDate;
  var isalmicDay, islamicMonth, islamicYear;
  var geoWeekday, geoDay, geoMonth, geoYear;

  _fetchData() async {
    final response = await http.get("http://api.aladhan.com/v1/gToH?date");
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        islamicDate = map['data']['hijri'];
        isalmicDay = islamicDate["day"];
        islamicMonth = islamicDate['month']['en'];
        islamicYear = islamicDate['year'];
        geographicDate = map['data']['gregorian'];
        geoWeekday = geographicDate['weekday']['en'];
        geoDay = geographicDate['day'];
        geoMonth = geographicDate['month']['en'];
        geoYear = geographicDate['year'];
        print("this is $isalmicDay");
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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Ibadath",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),backgroundColor: Colors.yellow.shade600,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              islamicDay: isalmicDay.toString(),
              islamicMonth: islamicMonth.toString(),
              islamicYear: islamicYear.toString(),
              geographicWeakDay: geoWeekday.toString(),
              geoDay: geoDay.toString(),
              geoMonth: geoMonth.toString(),
              geoyear: geoYear.toString(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      Width: MediaQuery.of(context).size.width/2.4,
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => NamazScreen()
                        ));
                      },
                      text: "Namaz     ",
                      Img: AssetImage("assets/images/icons/namaz.png"),
                    ),
                    RightIconContainer(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => RozaScreen()
                        ));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      text:  "      Roza",
                      Img: AssetImage("assets/images/icons/roza.png"),
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HajjScreen()
                        ));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      color: Colors.amber.shade600,
                      text: "Hajj       ",
                      Img: AssetImage("assets/images/icons/hajj.png"),
                    ),
                    RightIconContainer(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => UmrahScreen()
                        ));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      text: "               Umrah",
                      Img: AssetImage("assets/images/icons/umrah.png"),
                      color: Colors.brown.shade900,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DuaScreen()
                        ));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      color: Colors.green.shade900,
                      text: "Dua          ",
                      Img: AssetImage("assets/images/icons/zikar.png"),
                    ),
                    RightIconContainer(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => TasbehatScreen()
                        ));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      text: "              Tasbehat",
                      color: Colors.pink.shade700,
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
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
