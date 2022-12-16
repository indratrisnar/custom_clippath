import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Eps12 extends StatelessWidget {
  const Eps12({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 12')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 200,
              height: 250,
              child: ClipPath(
                clipper: ClipQuarterOval(),
                // child: Container(color: Colors.blue[200]),
                child: Image.network(imageUrl,fit: BoxFit.cover,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipQuarterOval extends CustomClipper<Path> {
  double degreeToRadian(num degree) => degree * (Math.pi / 180);

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double margin = 0;
    Path path = Path();

    path.addArc(
      Rect.fromLTWH(margin, margin, width, height),
      degreeToRadian(270),
      degreeToRadian(90),
    );
    path.lineTo(width/2, height/2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
