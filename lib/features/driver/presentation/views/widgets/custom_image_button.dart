import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomImageButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: 330,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xff4DA1DD),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Text(
          'اضف صورة',
          style: TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            color: Color(0xff4DA1DD),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}