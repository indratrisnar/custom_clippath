import 'package:flutter/material.dart';

class Eps3 extends StatelessWidget {
  const Eps3({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 3')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: SizedBox(
              width: 250,
              height: 150,
              child: ClipPath(
                clipper: ClipTrapezoid(),
                // child: Container(color: Colors.amber),
                child: Image.network(imageUrl,fit: BoxFit.cover,),
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: Text('Button'),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipTrapezoid extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path()
      ..moveTo(width * 0.2, 0)
      ..lineTo(width * 0.8, 0)
      ..lineTo(width, height)
      ..lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
