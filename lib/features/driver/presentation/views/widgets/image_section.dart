import 'package:flutter/material.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/custom_image_button.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/custom_image_container.dart';


import '../../../../../core/utils/styles.dart';

class ImageSection extends StatelessWidget {
  final String text;
  const ImageSection({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, bottom: 32, right: 17, left: 17),
      decoration: BoxDecoration(
        color: const Color(0xffF8FCFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: Styles.textStyle14,
          ),
          const SizedBox(
            height: 22,
          ),
          const CustomImageContainer(
            width: 330,
            height: 227,
            imageSize: 100,
          ),
          const SizedBox(
            height: 22,
          ),
          const CustomImageButton(),
        ],
      ),
    );
  }
}
