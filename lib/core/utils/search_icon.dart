import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  final String imagePath;

  const SearchIcon({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: Color(0xff49AAEF),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/images/Vector.png',
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
