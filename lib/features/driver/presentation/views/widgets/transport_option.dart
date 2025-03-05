import 'package:flutter/material.dart';
import 'package:hawa_application/core/utils/styles.dart';

class TransportOption extends StatelessWidget {
  final String imagePath;
  final String label;
  final bool isSelected; 

  const TransportOption({
    super.key,
    required this.imagePath,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffC0DDE3) : Colors.white,
        border: Border.all(color: const Color(0xff49AAEF)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style:
                Styles.textStyle16500.copyWith(color: const Color(0xff2A2A2A)),
          ),
        ],
      ),
    );
  }
}
