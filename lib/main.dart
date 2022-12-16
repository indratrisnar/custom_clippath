import 'package:custom_clippath/eps10.dart';
import 'package:custom_clippath/eps11.dart';
import 'package:custom_clippath/eps12.dart';
import 'package:custom_clippath/eps13.dart';
import 'package:custom_clippath/eps14.dart';
import 'package:custom_clippath/eps15.dart';
import 'package:custom_clippath/eps4.dart';
import 'package:custom_clippath/eps5.dart';
import 'package:custom_clippath/eps6.dart';
import 'package:custom_clippath/eps7.dart';
import 'package:custom_clippath/eps8.dart';
import 'package:custom_clippath/eps9.dart';
import 'package:flutter/material.dart';

import 'eps1.dart';
import 'eps2.dart';
import 'eps3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Eps15(),
    );
  }
}