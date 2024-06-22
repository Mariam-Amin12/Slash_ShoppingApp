import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  ImageCard({super.key});

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  var icon = Icons.favorite_border_outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 129,
      width: 130,
      child: Stack(
        children: [
          IconButton(
              onPressed: null, icon: Icon(Icons.favorite_border_outlined)),
          Container(
  decoration: ShapeDecoration(
    shape: CircleBorder(),
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/beautiful.jpg'),
    ),
  ),
),
        ],
      ),
    );
  }
}
