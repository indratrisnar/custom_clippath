import 'package:flutter/material.dart';

class Eps10 extends StatelessWidget {
  const Eps10({super.key});

  @override
  Widget build(BuildContext context) {
    String imageUrl =
        'https://cdnb.artstation.com/p/assets/images/images/057/005/959/large/artgentle-22b.jpg?1670587993';
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 10')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Container(
              color: Colors.purple,
              width: 200,
              height: 250,
              child: ClipPath(
                clipper: ClipCopyPaste(),
                child: Container(color: Colors.blue[200]),
                // child: Image.network(imageUrl),
                // child: ElevatedButton(onPressed: (){}, child: Text('asas')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipCopyPaste extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();

    double margin = 20;

    path.addRect(
      Rect.fromLTWH(margin, margin, width/2, height/2),
    );

    path.addRect(
      Rect.fromLTWH(margin*2, margin*2, width/2, height/2),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
