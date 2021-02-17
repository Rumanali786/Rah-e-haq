import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';

class ShijrahSubpage extends StatefulWidget {
  @override
  _ShijrahSubpageState createState() => _ShijrahSubpageState();
}

class _ShijrahSubpageState extends State<ShijrahSubpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shijrah Shareef",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: pdf.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => imagepreview(
                url: pdf[index]['pdfurl'],
              ),
              ),
              );
            },
            child: CachedNetworkImage(
              fit: BoxFit.fitWidth,
              imageUrl: pdf[index]['pdfurl'],
              errorWidget: (context, index, error) => Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }


  List pdf = [
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/1.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/2.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/3.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/4.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/5.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/6.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/7.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/8.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/9.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/10.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/11.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/12.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/13.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/14.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/15.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/16.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/17.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/18.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/19.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/20.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/21.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/22.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/23.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/24.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/25.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/26.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/27.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/28.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/29.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/30.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/31.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/32.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/33.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/34.jpg"},
    {"pdfurl": URL.url + "assets/img/shijrah-shareef/35.jpg"},
  ];
}

