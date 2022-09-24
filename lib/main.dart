import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machine_test/view/homepage.dart';
import 'package:machine_test/view/widgets.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,));
}

