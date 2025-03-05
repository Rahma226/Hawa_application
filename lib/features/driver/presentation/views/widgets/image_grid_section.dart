import 'package:flutter/widgets.dart';
import 'package:hawaa_app/core/utils/styles.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/custom_image_button.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/custom_image_grid.dart';

class ImageGridSection extends StatelessWidget {
    final String text;

  const ImageGridSection({super.key, required this.text});

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
          const CustomImageGrid(),
          const SizedBox(
            height: 22,
          ),
          const CustomImageButton(),
        ],
      ),
    );
  }
}