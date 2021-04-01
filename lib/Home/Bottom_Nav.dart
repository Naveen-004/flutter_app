import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnav extends StatefulWidget {
  @override
  _bottomnavState createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined,color: Colors.black45),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,color: Colors.black45),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border,color: Colors.black45,),
          label: 'Bookmarks',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.cyan,
      onTap: _onItemTapped,
      iconSize: 30,
      elevation: 0,
    );
  }
}
