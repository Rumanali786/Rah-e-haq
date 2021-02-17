import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasbeeh extends StatefulWidget {
  @override
  _TasbeehState createState() => _TasbeehState();
}

class _TasbeehState extends State<Tasbeeh> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeeh",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.yellow.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.black,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _incrementCounter();
                  });
                },
                child: CircleAvatar(
                    radius: 78,
                    backgroundColor: Colors.yellow.shade600,
                    child: Text("$_counter",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlineButton(
                highlightedBorderColor: Colors.black,

                padding: EdgeInsets.all(8),
                color: Colors.yellow.shade600,
                onPressed: () {
                  setState(() {
                    _counter=0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
