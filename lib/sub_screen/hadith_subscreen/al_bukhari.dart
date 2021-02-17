import 'dart:convert';
import 'package:rah_e_haq/constants/local_feeds.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class AlBukhari extends StatefulWidget {
  @override
  _AlBukhariState createState() => _AlBukhariState();
}

class _AlBukhariState extends State<AlBukhari> {
  List data = [];

  _fetchData() async {
    final response =
        await http.get(URL.url+"/ahadiths/books/1");
    if (response.statusCode == 200) {
      setState(() {
        Map map = json.decode(response.body);
        data = map['response']['books'];
        print("this is books $data");
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
      appBar: AppBar(
        title: Text(
          "Hadith Book",
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 60,
              child: Card(
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        data[index]['book'],
                        style: TextStyle(
                          fontFamily: 'Jameel',
                          fontSize: 20,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(' . ',
                          style: TextStyle(
                              fontFamily: 'Jameel',
                              fontSize: 20,)),
                      Text(data[index]['book_number'],
                          style: TextStyle(
                              fontFamily: 'Jameel',
                              fontSize: 20,))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
