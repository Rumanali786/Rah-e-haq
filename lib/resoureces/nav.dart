import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rah_e_haq/screens/hadith_screen.dart';
import 'package:rah_e_haq/screens/home_screen.dart';
import 'package:rah_e_haq/screens/more_screen.dart';
import 'package:rah_e_haq/screens/quran_screen.dart';
import 'package:rah_e_haq/screens/shijrah_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  String _title = "";
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    QuranScreen(),
    HadithScreen(),
    ShijrahScreen(),
    More(),
  ];

  @override
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Home';
          }
          break;
        case 1:
          {
            _title = 'Quran';
          }
          break;
        case 2:
          {
            _title = 'Hadith';
          }
          break;
        case 3:
          {
            _title = 'Shijrah';
          }
          break;
        case 4:
          {
            _title = 'More';
          }
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _title = "Home";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE64A19),
        title: Text(
          _title,
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.menu_book_outlined, size: 30),
            title: Text('Quran', style: TextStyle(fontSize: 20)),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.library_books_outlined, size: 30),
            title: Text('Hadith', style: TextStyle(fontSize: 20)),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(Icons.menu_book_outlined, size: 30),
            title: Text('Shijrah', style: TextStyle(fontSize: 20)),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              Icons.more_horiz,
              size: 30,
            ),
            title: Text('More', style: TextStyle(fontSize: 20)),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
// void onTabTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//     switch(index) {
//       case 0: { _title = 'Home'; }
//       break;
//       case 1: { _title = 'Timer'; }
//       break;
//       case 2: { _title = 'Overview'; }
//       break;
//       case 3: { _title = 'Clients'; }
//       break;
//       case 4: { _title = 'Clients'; }
//       break;
//     }
//   });
// }
}
