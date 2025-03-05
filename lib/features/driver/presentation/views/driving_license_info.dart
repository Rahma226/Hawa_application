import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/custom_text_field.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/image_section.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class DrivingLicenseInfoView extends StatelessWidget {
  const DrivingLicenseInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
        largeText: 'رخصة قيادة السائق', smallText: 'املأ جميع بياناتك');
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
              child: CustomTextField(hintText: 'رقم رخصة القيادة'),
            ),
            const SizedBox(
              height: 25,
            ),
            const ImageSection(text: 'صورة رخصة القيادة  '),
            const SizedBox(
              height: 25,
            ),
            const ImageSection(text: 'صورة رخصة القيادة (الجزء الخلفي)  '),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hintText: 'تاريخ انتهاء الرخصة',
              prefixIcon: Icon(FontAwesomeIcons.angleDown),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(text: 'تم', isActive: true, onPressed: () {}),
            const SizedBox(
              height: 65,
            ),
          ],
        ),
      ),
    );
  }
}
