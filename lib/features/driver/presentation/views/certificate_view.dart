import 'package:flutter/material.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/image_section.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class CertificateView extends StatelessWidget {
  const CertificateView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
        largeText: 'اضف شهاده حسن السير والسلوك',
        smallText: 'املأ جميع بياناتك');
    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع'),
      body: Column(
        children: [
          const SizedBox(
            height: 52,
          ),
          Headline(headlineModel: headlineModel),
          const SizedBox(
            height: 55,
          ),
          const ImageSection(text: 'صورة الشهاده'),
          const Spacer(),
          CustomButton(text: 'تم', isActive: true, onPressed: () {}),
          const SizedBox(
            height: 47,
          ),
        ],
      ),
    );
  }
}
