import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class SuratDetail extends StatefulWidget {
  final surahNumber;

  const SuratDetail({Key key, @required this.surahNumber}) : super(key: key);

  @override
  _SuratDetailState createState() => _SuratDetailState();
}

class _SuratDetailState extends State<SuratDetail> {
  
  List details = [];
  List urduDetails = [];

  _fetchData() async {
    final response = await http.get(
        "http://api.alquran.cloud/v1/surah/${widget.surahNumber}/ar.alafasy");
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        details = map['data']['ayahs'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  _fetchUrduData() async {
    final response = await http.get(
        "http://api.alquran.cloud/v1/surah/${widget.surahNumber}/ur.jalandhry");
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        urduDetails = map['data']['ayahs'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
    _fetchUrduData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Surah",
            style: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.yellow.shade600,
        ),
        body: Column(
          children: [
            Container(
              height: 120,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.skip_previous,
                    size: 60,
                  ),
                  Icon(
                    Icons.play_circle_filled_sharp,
                    size: 60,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 60,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  // primary: false,
                  itemCount: details.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              details[index]['text'],
                              textDirection: TextDirection.rtl,
                              style:
                                  TextStyle(fontSize: 20, fontFamily: "Jameel"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              urduDetails[index]['text'],
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "Nastaleeq"),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
