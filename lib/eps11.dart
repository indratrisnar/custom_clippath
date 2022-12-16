import 'package:flutter/material.dart';

class Eps11 extends StatelessWidget {
  const Eps11({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 11')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 200,
              height: 250,
              child: ClipPath(
                clipper: ClipOvalRect(),
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

class ClipOvalRect extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double margin = 20;

    Path path = Path();

    path.addOval(
      Rect.fromLTWH(
        margin,
        margin,
        width - (margin * 2),
        height - (margin * 2),
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
