import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/styles.dart';

class DriverField extends StatefulWidget {
  final String label;
  final VoidCallback onTap; 

  const DriverField({super.key, required this.label, required this.onTap});

  @override
  _DriverFieldState createState() => _DriverFieldState();
}

class _DriverFieldState extends State<DriverField> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap, 
      onTapDown: (_) => setState(() => isTapped = true), 
      onTapUp: (_) => setState(() => isTapped = false), 
      onTapCancel: () =>
          setState(() => isTapped = false), 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          width: 362,
          height: 64,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  isTapped ? const Color(0xff4DA1DD) :
                   const Color(0xffCCCCCC),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: widget.onTap,
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 24,
                  color: Color(0xff4DA1DD),
                ),
              ),
              Expanded(
                child: Text(
                  widget.label,
                  textAlign: TextAlign.right,
                  style: Styles.textStyle16.copyWith(
                    color: const Color(0xff263238),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
