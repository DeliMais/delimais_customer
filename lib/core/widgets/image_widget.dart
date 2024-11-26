import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.provider,
    this.width,
    this.height,
    super.key,
  });

  final double? width;
  final double? height;
  final ImageProvider provider;

  @override
  Widget build(BuildContext context) {
    return Image(
      width: width,
      height: height,
      image: provider,
      fit: BoxFit.cover,
      gaplessPlayback: true,
    );
  }
}
