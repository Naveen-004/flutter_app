import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Cards.dart';
import 'package:flutter_app/pages/Menu.dart';
import 'package:flutter_app/pages/Bottom_Nav.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomnav(),
        drawer: menu(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.cyan,
        ),
        body: card(),
    );
  }
}
