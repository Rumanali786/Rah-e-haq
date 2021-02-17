import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rah_e_haq/constants/local_feeds.dart';
import 'package:rah_e_haq/resoureces/icon_container.dart';

class Zikkar extends StatefulWidget {
  @override
  _ZikkarState createState() => _ZikkarState();
}

class _ZikkarState extends State<Zikkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Zikkar",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
     body :ListView.builder(
        shrinkWrap: true,
        itemCount: zikr.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => imagepreview(
                  url: zikr[index]['zikr'],
                ),
              ),
              );
            },
            child: CachedNetworkImage(
              imageUrl: zikr[index]['zikr'],
              errorWidget: (context, index, error) => Icon(Icons.error),
            ),
          );
        },
      ),
    );
  }
  List zikr = [
    {
      "zikr" : URL.url+"assets/img/zikar.jpg"
    },
    {
      "zikr" : URL.url+"assets/img/zikar1.jpg"
    }


  ];
}
