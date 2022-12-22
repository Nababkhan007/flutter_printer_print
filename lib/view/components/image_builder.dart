import 'package:flutter/material.dart';

class ImageBuilder extends StatelessWidget {
  final String imagePath;
  final double imageWidth;
  final double imageHeight;

  const ImageBuilder({
    Key? key,
    required this.imagePath,
    this.imageWidth = 200,
    this.imageHeight = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: imageWidth,
      height: imageHeight,
    );
  }
}
