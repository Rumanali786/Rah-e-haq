import 'package:flutter/material.dart';
import 'package:rah_e_haq/resoureces/container.dart';
import 'package:rah_e_haq/sub_screen/Zikkar_screen.dart';
import 'package:rah_e_haq/sub_screen/asma_ul_hasna_screen.dart';
import 'package:rah_e_haq/sub_screen/asma_ul_nabi_screen.dart';
import 'package:rah_e_haq/sub_screen/books.dart';
import 'package:rah_e_haq/sub_screen/ibadaah_screen.dart';
import 'package:rah_e_haq/sub_screen/prayer_timing_screen.dart';
import 'package:rah_e_haq/sub_screen/shahdat_screen.dart';
import 'package:rah_e_haq/sub_screen/tasbeeh_screen.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        crossAxisCount: 2,
        children: [
          container(
            text: "Zikkar",
            press: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Zikkar()
              ));
            },
          ),
          container(
            text: "Books",
            press: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Books()
              ));
            },
          ),
          container(
            text: "Ibadaah",
            press: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => Ibadaah()
            ));},
          ),
          container(
            text: "Asma-ul-Hasna",
            press: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => Asma_ul_husna()
            ));},
          ),
          container(
            text: "Asma-ul-Nabi",
            press: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => Asma_ul_nabi()
            ));},
          ),
          container(
            text: "Shahdat",
            press: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => Shahdat()
            ));},
          ),
          container(
            text: "Tasbeeh",
            press: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Tasbeeh()
              ));
            },
          ),
          container(
            text: "Prayer Timings",
            press: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) => PrayerTiming()
            ));},
          ),
          container(
            text: "Stopping Rules",
            press: () {},
          ),
        ],
      ),
    );
  }
}
