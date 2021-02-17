import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class AlNasai extends StatefulWidget {
  @override
  _AlNasaiState createState() => _AlNasaiState();
}

class _AlNasaiState extends State<AlNasai> {
  List data = [];

  _fetchData() async {
    final response =
        await http.get("https://apiastana.codensoft.com/ahadiths/books/4");
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
                            fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(' . ',
                          style: TextStyle(
                              fontFamily: 'Jameel',
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(data[index]['book_number'],
                          style: TextStyle(
                              fontFamily: 'Jameel',
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
