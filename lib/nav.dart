import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Apps/flutter_app/lib/Menu.dart';
import 'package:flutter_app/dashboard.dart';
import 'package:flutter_app/Cards.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    card(),
    Text('search'),
    Text('bookmarks')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menu(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            label: 'Bookmarks',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
        iconSize: 25,
        elevation: 0,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
