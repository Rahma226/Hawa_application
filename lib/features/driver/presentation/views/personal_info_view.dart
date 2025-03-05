import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/change_image_dialog.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/custom_image_button.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/custom_image_container.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/image_section.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/image_selection_modal.dart';

import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text_field.dart';
import '../../../../shared/models/headline_model.dart';
import '../../../home/presentation/views/widgets/headline.dart';

class PersonalInfoView extends StatelessWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'اضف بياناتك الشخصية',
      smallText: 'املأ جميع بياناتك',
    );

    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 52),
            Headline(headlineModel: headlineModel),
            const SizedBox(height: 66),

            GestureDetector(
              onTap: () => showChangeImageDialog(context),
              child: const CustomImageContainer(
                  width: 100, height: 100, imageSize: 40),
            ),
            const SizedBox(height: 25),

            CustomImageButton(
                onPressed: () => showImageSelectionModal(context)),
            const SizedBox(height: 48),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'ادخل اسمك الأول'),
            ),
            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'ادخل اسمك الأخير'),
            ),
            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                hintText: 'رقم هاتفك',
                prefixIcon: Icon(FontAwesomeIcons.angleDown),
              ),
            ),
            const SizedBox(height: 25),
            const ImageSection(text: 'صورة بطاقة الرقم القومي'),
            const SizedBox(height: 25),
            const ImageSection(text: 'صورة بطاقة الرقم القومي (الجزء الخلفي)'),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'ادخل رقمك القومي'),
            ),
            const SizedBox(height: 41),
            CustomButton(text: 'تم', isActive: true, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
