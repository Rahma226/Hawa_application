import 'package:flutter/widgets.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/custom_image_container.dart';

class CustomImageGrid extends StatelessWidget {
  const CustomImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return const CustomImageContainer(
                  width: 161,
                  height: 109,
                  imageSize: 70,
                );
              },
            );
  }
}