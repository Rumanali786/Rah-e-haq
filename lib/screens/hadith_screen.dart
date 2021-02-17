import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:rah_e_haq/resoureces/container.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:rah_e_haq/sub_screen/hadith_subscreen/abu_dawood.dart';
import 'package:rah_e_haq/sub_screen/hadith_subscreen/al_bukhari.dart';
import 'package:rah_e_haq/sub_screen/hadith_subscreen/al_nasai.dart';
import 'package:rah_e_haq/sub_screen/hadith_subscreen/al_timazi.dart';
import 'package:rah_e_haq/sub_screen/hadith_subscreen/ibn_maja.dart';

class HadithScreen extends StatefulWidget {
  @override
  _HadithScreenState createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  var islamicDate;
  var geographicDate;
  var isalmicDay,islamicMonth,islamicYear;
  var geoWeekday,geoDay,geoMonth,geoYear;

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
        geoWeekday =  geographicDate['weekday']['en'];
        geoDay = geographicDate['day'];
        geoMonth = geographicDate['month']['en'];
        geoYear =geographicDate['year'];
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(
              islamicDay: isalmicDay.toString(),
              islamicMonth: islamicMonth.toString(),
              islamicYear: islamicYear.toString() ,
              geographicWeakDay:  geoWeekday.toString(),
              geoDay:   geoDay.toString(),
              geoMonth:   geoMonth.toString(),
              geoyear:   geoYear.toString(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      Width: MediaQuery.of(context).size.width/2.4,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlBukhari()));
                      },
                      text: "Al-Bukhari            ",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
                    RightIconContainer(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IbnMaja()));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      text:  "                Ibn-e-Maja",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlTimazi()));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      color: Colors.amber.shade600,
                      text: "Al-Tirmazi           ",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
                    RightIconContainer(
                      Width: MediaQuery.of(context).size.width/2.4,
                      text: "          Mishkat",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                      color: Colors.brown.shade900,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlNasai()));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      color: Colors.green.shade900,
                      text: "Al-Nasai           ",
                      Img: AssetImage("assets/images/icons/hadith.png"),
                    ),
                    RightIconContainer(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AbuDawood()));
                      },
                      Width: MediaQuery.of(context).size.width/2.4,
                      text: "                Abu dawood",
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
