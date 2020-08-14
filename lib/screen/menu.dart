import 'package:flutter/material.dart';
import 'package:project1/costom/HexColor.dart';
import 'package:project1/screen/Home.dart';
import 'package:project1/screen/anime.dart';
import 'package:project1/screen/list_of_anime.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  String _titleAppbar = "Vover";

  final _titleBars = ["Home", "Anime", "List"];

  final tabs = [
    Home(),
    Anime(),
    ListOfAnime()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(_currentIndex == 0
              ? _titleBars[0]
              : _currentIndex == 1
                  ? _titleBars[1]
                  : _currentIndex == 2 ? _titleBars[2] : _titleAppbar),
        ),
        backgroundColor: HexColor("#0f2a70"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: HexColor("#0f2a70")
              ),
              child: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text("Download"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Bookmark"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
          ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: HexColor("#0f2a70"),
        selectedItemColor: Colors.white,
        items: [
          buildBottomNavigationBarItem(_titleBars[0], Icons.home),
          buildBottomNavigationBarItem(_titleBars[1], Icons.apps),
          buildBottomNavigationBarItem(_titleBars[2], Icons.book),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String title, IconData iconData) {
    return BottomNavigationBarItem(
        icon: Icon(iconData),
        title: Text(title),
        backgroundColor: HexColor("#0f2a70")
        );
  }
}
