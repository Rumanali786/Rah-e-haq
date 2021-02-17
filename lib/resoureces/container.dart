import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/resoureces/social_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class container extends StatelessWidget {
  final String text;
  final Function press;
  container({@required this.text,this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black45,
              width: 1, //                   <--- border width here
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Center(child: Text(text,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold))),

        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  String islamicDay;
  String islamicMonth;
  String islamicYear;
  String geographicWeakDay;
  String geoDay;
  String geoMonth;
  String geoyear;
  TopSection({this.islamicDay,this.islamicMonth,this.geoDay,this.geographicWeakDay,this.geoMonth,this.geoyear,this.islamicYear});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/banner/1.jpg",
        height: 275,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              islamicDay,
              style: GoogleFonts.poppins(
                  color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  islamicMonth,
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  ",",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 20),
                ),
                Text(
                  islamicYear,
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(geographicWeakDay,
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
                Text(",",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
                Text(geoMonth,
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
                Text(geoDay,
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
                Text(",",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
                Text(geoyear,
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  width: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      SocalIcon(
                        iconSrc: "assets/Svg/facebook.svg",
                        press: () {
                          _launchURL(
                              "https://www.facebook.com/Silsla.Ayubia/");
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SocalIcon(
                        iconSrc: "assets/Svg/instagram.svg",
                        press: () {
                          _launchURL(
                              "https://www.facebook.com/Silsla.Ayubia/");
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SocalIcon(
                        iconSrc: "assets/Svg/youtube.svg",
                        press: () {
                          _launchURL(
                              "https://www.youtube.com/channel/UCHyMXUHiZa5JzfZofjPVHYw/videos?view_as=subscriber");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 248),
        child: Center(
          child: GestureDetector(
            onTap: () {
              _launchURL("http://rah-e-haq.com/");
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xfff0e7ca),
                  borderRadius: BorderRadius.circular(24)),
              height: 50,
              width: 280,
              child: Center(
                  child: Text(
                    "www.rah-e-haq.com",
                    style: GoogleFonts.poppins(fontSize: 18),
                  )),
            ),
          ),
        ),
      )
    ]);

  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
