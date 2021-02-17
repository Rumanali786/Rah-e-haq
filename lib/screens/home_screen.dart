import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';
import 'package:rah_e_haq/resoureces/container.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var rand = asmaulhusna[Random().nextInt(asmaulhusna.length)];
  var pic = images[Random().nextInt(images.length)];
  var rand1 = asmaulnabi[Random().nextInt(asmaulnabi.length)];
  var pic1 = images[Random().nextInt(images.length)];
  var islamicDate;
  var homeData;
  var geographicDate;
  var quotes;
  var upcoming, upcomingdesc;
  var coming, upcomingmehfil;
  var isalmicDay, islamicMonth, islamicYear;
  var geoWeekday, geoDay, geoMonth, geoYear;
  var flashes;

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
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  _fetchHomeData() async {
    final response = await http.get(URL.url + 'app');
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        homeData = map["hadees"]['description'];
        quotes = map['qoute']['title'];
        upcoming = map['upcommingAnnualMehfil'];
        upcomingdesc = upcoming['mehfilShortdesc'];
        coming = map['commingMehfil']['mehfilName'];
        upcomingmehfil = map['upcommingAnnualMehfil']['mehfilName'];
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }
  _fetchFlashesData() async {
    final response = await http.get(URL.url + 'app');
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        flashes = map['flash']['image'];
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchHomeData();
    _fetchData();
    _fetchFlashesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          TopSection(
            islamicDay: isalmicDay.toString(),
            islamicMonth: islamicMonth.toString(),
            islamicYear: islamicYear.toString(),
            geographicWeakDay: geoWeekday.toString(),
            geoDay: geoDay.toString(),
            geoMonth: geoMonth.toString(),
            geoyear: geoYear.toString(),
          ),
          SizedBox(
            height: 5,
          ),
          HomeRightIconContainer(
            headertext: 'فرمانے مصطفیٰ ﷺ',
            quatestext: "Hadith",
            Width: MediaQuery.of(context).size.width / 1.7,
            text: homeData.toString(),
            color: Colors.blue,
            Img: AssetImage("assets/images/icons/hadith.png"),
          ),
          HomeLeftIconContainer(
            headertext: 'قول',
            quatestext: "Quote",
            Height: MediaQuery.of(context).size.height / 4.7,
            Width: MediaQuery.of(context).size.width / 1.4,
            text: quotes.toString(),
            color: Colors.yellow.shade900,
            Img: AssetImage("assets/images/icons/hadith.png"),
          ),
          HomeRightIconContainer(
            headertext: upcomingmehfil.toString(),
            quatestext: "Events",
            Height: MediaQuery.of(context).size.height / 3.7,
            Width: MediaQuery.of(context).size.width / 1.4,
            text: upcomingdesc.toString(),
            color: Colors.green,
            Img: AssetImage("assets/images/icons/calender.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                      "Asma Ul Husna",
                      style: GoogleFonts.poppins(fontSize: 22),
                    )),
                    height: 45,
                  ),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pic['pic']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          rand['arabic'],
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Nastaleeq",
                              color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          rand['urdu'],
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Jameel",
                              color: Colors.white),
                        ),
                        Text(
                          rand['english'],
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.white),
                        ),
                        Text(
                          rand['eng'],
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                          "Asma Ul Nabi",
                          style: GoogleFonts.poppins(fontSize: 22),
                        )),
                    height: 45,
                  ),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(pic1['pic']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          rand1['arabic'].toString(),
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Nastaleeq",
                              color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          rand1['urdu'].toString(),
                          style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Jameel",
                              color: Colors.white),
                        ),
                        Text(
                          rand1['english'].toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.white),
                        ),
                        Text(
                          rand1['trans'].toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Container(
                    child: Center(
                        child: Text(
                          "Flashes",
                          style: GoogleFonts.poppins(fontSize: 22),
                        )),
                    height: 45,
                  ),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(flashes.toString()),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  static const images = [
    {'pic': "assets/bgs/1.jpg"},
    {'pic': "assets/bgs/2.jpg"},
    {'pic': "assets/bgs/3.jpg"},
    {'pic': "assets/bgs/4.jpg"},
    {'pic': "assets/bgs/5.jpg"},
    {'pic': "assets/bgs/6.jpg"},
    {'pic': "assets/bgs/7.jpg"},
    {'pic': "assets/bgs/8.jpg"},
    {'pic': "assets/bgs/9.jpg"},
    {'pic': "assets/bgs/5.jpg"},
  ];
}
//TODO drwaer about settings contact us