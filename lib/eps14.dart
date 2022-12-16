import 'package:flutter/material.dart';

class Eps14 extends StatelessWidget {
  const Eps14({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 14')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 250,
              height: 60,
              child: ClipPath(
                clipper: ClipTooltip(),
                child: Container(
                  color: Colors.blue[200],
                  alignment: const Alignment(0,-0.2),
                  child: const Text('Value Tooltip'),
                ),
                // child: Image.network(imageUrl,fit: BoxFit.cover,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipTooltip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double marginBottom = height * 2 / 10;
    Path path = Path();

    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, width, height - marginBottom),
        const Radius.circular(10),
      ),
    );
    path.lineTo((width / 2) + marginBottom, height - marginBottom);
    path.lineTo(width / 2, height);
    path.lineTo((width / 2) - marginBottom, height - marginBottom);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
