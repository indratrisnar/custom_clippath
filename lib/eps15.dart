import 'package:flutter/material.dart';

class Eps15 extends StatelessWidget {
  const Eps15({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 15')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 250,
              height: 250,
              child: ClipPath(
                clipper: ClipCannedDrink(),
                child: Container(color: Colors.blue[200]),
                // child: Image.network(imageUrl,fit: BoxFit.cover,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipCannedDrink extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path strawPath = Path();
    strawPath.lineTo(30, height/4);
    strawPath.lineTo(30+10, height/4);
    strawPath.lineTo(10, 0);

    Path path = Path();
    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, height/2, width / 4, height / 2),
        const Radius.circular(16),
      ),
    );
    path.addPath(strawPath, Offset(0,height*1/3));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
