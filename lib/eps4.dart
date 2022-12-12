import 'package:flutter/material.dart';

class Eps4 extends StatelessWidget {
  const Eps4({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 4')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: SizedBox(
              width: 220,
              height: 220,
              child: ClipPath(
                clipper: ClipDiamond(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl),
                // child: ElevatedButton(onPressed: (){}, child: Text('Diamond')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipDiamond extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path()
      ..moveTo(0, height * 0.5)
      ..lineTo(width * 0.5, 0)
      ..lineTo(width, height * 0.5)
      ..lineTo(width * 0.5, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
