import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';

class KhatamSareefSubpage extends StatefulWidget {
  @override
  _KhatamSareefSubpageState createState() => _KhatamSareefSubpageState();
}

class _KhatamSareefSubpageState extends State<KhatamSareefSubpage> {

  List khtamsareefpdf =[
    {
      "khtampdf": URL.url+"assets/img/khatam1.jpg"
    },
    {
      "khtampdf":URL.url+"assets/img/khatam2.jpg"
    },
    {
      "khtampdf":URL.url+"assets/img/khatam3.jpg"
    },
    {
      "khtampdf":URL.url+"assets/img/khatam4.jpg"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Khtatam Shareef",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: khtamsareefpdf.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => imagepreview(
                  url: khtamsareefpdf[index]['khtampdf'],
                ),
              ),
              );
            },
            child: CachedNetworkImage(
              imageUrl: khtamsareefpdf[index]['khtampdf'],
              errorWidget: (context, index, error) => Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }
}
