import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final double width, height, imageSize;
  const CustomImageContainer({
    super.key,
    required this.width,
    required this.height,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xffE2E6EC),
      ),
      child: Icon(
        Icons.image,
        color: Colors.grey,
        size: imageSize,
      ),
    );
  }
}
