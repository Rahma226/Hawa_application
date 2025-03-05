import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/custom_text_field.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/image_grid_section.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/image_section.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class CarLicenseView extends StatelessWidget {
  const CarLicenseView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
        largeText: 'رخصة السيارة', smallText: 'املأ جميع بياناتك');
    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 52,
            ),
            Headline(headlineModel: headlineModel),
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'سنة انتاج السيارة'),
            ),
            const SizedBox(
              height: 25,
            ),
            const ImageSection(text: 'شهادة تسجيل السيارة'),
            const SizedBox(
              height: 25,
            ),
            const ImageSection(text: 'شهادة تسجيل السيارة(الجانب الخلفي)'),
            const SizedBox(
              height: 25,
            ),
            const ImageGridSection(text: 'اضف عده صور للسيارة'),
            const SizedBox(
              height: 70,
            ),
            CustomButton(text: 'تم', 
            isActive: true,
             onPressed: () {
              context.go(AppRouter.kLocationPermissionView);
             }
             ),
            const SizedBox(
            height: 47,
          ),
          ],
        ),
      ),
    );
  }
}
