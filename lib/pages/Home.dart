import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

  ];

  bool onpress = false;
  _pressed () {
    setState((){
      onpress = !onpress;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Hamburgermenu(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Card(
              color: Colors.transparent,
              elevation: 0,
              child: Column(
                children: [
                  InkWell(
                    splashColor: Colors.grey[800],
                    onTap: () {
                      print(
                          'https://gadgets.ndtv.com/podcasts/features/oneplus-9-pro-price-in-india-best-flagship-2021-justice-league-snyder-cut-2399851');
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400,
                          height: 200,
                          child: Image.asset('images/oneplus9pro.jpeg'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 335, 0),
                          child: Text(
                            'NEWS',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Is OnePlus 9 Pro the Best Flagship of 2021 for Indian Customers?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                onpress
                                    ? Icons.bookmark
                                    : Icons.bookmark_border_rounded,
                                color: onpress ? Colors.cyan : Colors.grey,
                                size: 25,
                              ),
                              onPressed: () => _pressed(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}

class Hamburgermenu extends StatefulWidget {
  @override
  _HamburgermenuState createState() => _HamburgermenuState();
}

class _HamburgermenuState extends State<Hamburgermenu> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.white),
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(
                'Tech Feed',
                style: TextStyle(
                  height: 1,
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Center(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {},
              ),
            ),
            Center(
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

