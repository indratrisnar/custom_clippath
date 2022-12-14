import 'package:flutter/material.dart';

class Eps6 extends StatelessWidget {
  const Eps6({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 6')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              width: 200,
              height: 220,
              child: ClipPath(
                clipper: ClipHalfOval(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl, fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipHalfOval extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    path.moveTo(0, height);
    path.cubicTo(0, 0, width, 0, width, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
