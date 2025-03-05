import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 70, 
          backgroundColor: Colors.grey[300], 
        ),
       const CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xff4DA1DD),
          child: Icon(Icons.camera_alt, color: Colors.white, size: 18),
        ),
      ],
    );
  }
}
