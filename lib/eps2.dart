import 'package:flutter/material.dart';

class Eps2 extends StatelessWidget {
  const Eps2({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 2')),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Center(
            child: SizedBox(
              width: 280,
              height: 180,
              child: ClipPath(
                clipper: ClipParallelogram(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl,fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipParallelogram extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    // top left point
    path.lineTo(width*0.2, 0);

    // top right point
    path.lineTo(width, 0);

    // bottom right point
    path.lineTo(width*0.8, height);

    // bottom left point
    path.lineTo(0, height);

    // go back to -> top left point
    path.lineTo(width*0.2, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}