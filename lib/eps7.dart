import 'package:flutter/material.dart';

class Eps7 extends StatelessWidget {
  const Eps7({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 7')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 220,
              height: 220,
              child: ClipPath(
                clipper: ClipWave(),
                // child: Container(color: Colors.blue[200]),
                child: Image.network(imageUrl),
                // child: ElevatedButton(onPressed: (){},child: Text('Button'),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipWave extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double marginTop = height * 1 / 3;

    Path path = Path();

    path.moveTo(0, marginTop);
    path.cubicTo(
      width * 1 / 6,
      (height / 4) + marginTop,
      width * 2 / 6,
      -(height / 4) + marginTop,
      width * 3 / 6,
      marginTop,
    );

    path.cubicTo(
      width * 4 / 6,
      (height / 4) + marginTop,
      width * 5 / 6,
      -(height / 4) + marginTop,
      width * 6 / 6,
      marginTop,
    );

    path.lineTo(width, height);
    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
