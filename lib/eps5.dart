import 'package:flutter/material.dart';

class Eps5 extends StatelessWidget {
  const Eps5({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 5')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 250,
              child: ClipPath(
                clipper: ClipCrescentMoon(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl,fit: BoxFit.cover,),
                // child: ElevatedButton(
                //   child: Text('Click'),
                //   onPressed: () {},
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipCrescentMoon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    double marginRight = 45;

    Path path = Path()
      ..moveTo(width - marginRight, 0)
      ..quadraticBezierTo(
        (width * 0.5) - marginRight,
        height * 0.5,
        width - marginRight,
        height,
      )
      ..quadraticBezierTo(
        (-(width * 0.1)) - marginRight,
        height * 0.5,
        width - marginRight,
        0,
      );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
