library project1.globals;

import 'package:flutter/material.dart';

String userName;
String userDesig;
String userOrg;

appBarStyle() {
  return Container(
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
        colors: [
          Colors.green[800],
          Colors.lightGreen,
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
    ),
  );
}
