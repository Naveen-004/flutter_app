import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
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