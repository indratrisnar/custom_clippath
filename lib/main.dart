import 'package:custom_clippath/eps4.dart';
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
      home: Eps4(),
    );
  }
}