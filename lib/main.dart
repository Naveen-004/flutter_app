import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/loading.dart';


void main() => runApp(MaterialApp(
    home: Home(),
  routes: {
      '/home': (context) => Home(),
  },
)
);

