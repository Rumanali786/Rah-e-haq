import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rah_e_haq/resoureces/container.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:rah_e_haq/sub_screen/Shijrah_subpages/khatam_sareef_subpage.dart';
import 'package:rah_e_haq/sub_screen/Shijrah_subpages/khtam_Audio_subscreen.dart';
import 'package:rah_e_haq/sub_screen/Shijrah_subpages/shijrah_shareef_subpage.dart';

class ShijrahScreen extends StatefulWidget {
  @override
  _ShijrahScreenState createState() => _ShijrahScreenState();
}

class _ShijrahScreenState extends State<ShijrahScreen> {
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
                      Width: MediaQuery.of(context).size.width / 2.4,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShijrahSubpage()));
                      },
                      text: "Shijrah Shareef                             ",
                      Img: AssetImage("assets/images/icons/pdf.png"),
                    ),
                    RightIconContainer(
                      Width: MediaQuery.of(context).size.width / 2.4,
                      text: "                Audio",
                      Img: AssetImage("assets/images/icons/audio.png"),
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LeftIconContainer(
                      Width: MediaQuery.of(context).size.width / 2.4,
                      color: Colors.amber.shade600,
                      text: "Video           ",
                      Img: AssetImage("assets/images/icons/video.png"),
                    ),
                    RightIconContainer(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KhatamSareefSubpage()));
                      },
                      Width: MediaQuery.of(context).size.width / 2.4,
                      text: "                 Khatam Sharef ",
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
                                builder: (context) => KhatamAudio()));
                      },
                      Width: MediaQuery.of(context).size.width / 2.4,
                      color: Colors.green.shade900,
                      text: "Khatam Audio                ",
                      Img: AssetImage("assets/images/icons/audio.png"),
                    ),
                    RightIconContainer(
                      Width: MediaQuery.of(context).size.width / 2.4,
                      text: "                Bookmarks",
                      color: Colors.pink.shade700,
                      Img: AssetImage("assets/images/icons/bookmark.png"),
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
