import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sharebutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.share_outlined,
        color: Colors.grey,
        size: 25,
      ),
      onPressed: () {},
    );
  }
}

class bookmarkbutton extends StatefulWidget {
  @override
  _bookmarkbuttonState createState() => _bookmarkbuttonState();
}

class _bookmarkbuttonState extends State<bookmarkbutton> {
  bool onpress = false;
  _pressed () {
    setState((){
      onpress = !onpress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(
        onpress
            ? Icons.bookmark
            : Icons.bookmark_border_rounded,
        color: onpress ? Colors.cyan : Colors.grey,
        size: 25,
      ),
      onPressed: () => _pressed(),
    );
  }
}
