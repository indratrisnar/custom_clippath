import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Eps9 extends StatelessWidget {
  const Eps9({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 9')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 200,
              height: 200,
              child: ClipPath(
                clipper: ClipRadian(),
                // child: Container(color: Colors.blue[200]),
                child: Image.network(imageUrl),
                // child: ElevatedButton(onPressed: (){}, child: Text('')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipRadian extends CustomClipper<Path> {
  double degreeToRadian(num degree) => degree * (Math.pi / 180);

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();

    path.arcTo(
      Rect.fromLTWH(0, 0, width, height),
      degreeToRadian(0),
      degreeToRadian(270),
      true,
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
