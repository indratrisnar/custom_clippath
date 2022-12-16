import 'package:flutter/material.dart';

class Eps8 extends StatelessWidget {
  const Eps8({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 8')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              // color: Colors.purple,
              width: 200,
              height: 200,
              child: ClipPath(
                clipper: ClipPartialCircle(),
                // child: Container(color: Colors.blue[200]),
                child: Image.network(imageUrl),
                // child: ElevatedButton(onPressed: (){}, child: Text('asas')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipPartialCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    double weight = 0.7;

    path.moveTo(width / 2, 0);
    path.conicTo(0, 0, 0, height / 2, weight);
    path.conicTo(0, height, width/2, height, weight);
    path.conicTo(width, height, width, height/2, weight);
    path.lineTo(width/2, height/2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
