import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Apps/flutter_app/lib/buttons.dart';

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        Sharebutton(),
                        Bookmarkbutton(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
