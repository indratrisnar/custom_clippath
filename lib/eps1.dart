import 'package:flutter/material.dart';

class Eps1 extends StatelessWidget {
  const Eps1({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 1')),
      body: ListView(
        children: [
          Center(
            child: SizedBox(
              width: 250,
              height: 250,
              // child:Container(color: Colors.amber),
              child: ClipPath(
                clipper: ClipTriangle(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ClipTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    // center top point
    path.lineTo(width*0.5, 0);

    // bottom right point
    path.lineTo(width, height);

    // bottom left point
    path.lineTo(0, height);

    // close to center top point
    path.lineTo(width*0.5, 0);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}