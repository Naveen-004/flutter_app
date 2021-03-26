import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey[850]),
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                ),
                child: Text(
                  'Tech Feed',
                  style: TextStyle(
                    height: 1,
                    color: Colors.white,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Center(
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                  onTap: () {},
                ),
              ),
              Center(
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Card(
              color: Colors.grey[500],
              elevation: 5,
              margin: EdgeInsets.all(1),
              child: InkWell(
                splashColor: Colors.grey,
                onTap: () {},
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Image.asset('images/oneplus9pro.jpeg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 310, 0),
            child: Text(
              'NEWS',
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
            child: Text(
              'OnePlus 9 Pro Gets DisplayMate A+ Rating, Sets 13 Performance Records',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[300],
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
          ),
        ],
      ),
    );
  }
}
