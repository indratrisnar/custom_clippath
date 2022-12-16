import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Eps13 extends StatelessWidget {
  const Eps13({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 13')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 200,
              height: 200,
              child: ClipPath(
                clipper: ClipPolygon(),
                // child: Container(color: Colors.blue[200]),
                child: Image.network(imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPolygon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    path.addPolygon(
      [
        Offset.zero,
        Offset(width*3/4, height/4),
        Offset(width, height),
      ],
      true,
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
