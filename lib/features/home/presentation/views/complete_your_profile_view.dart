import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_circle_avatar.dart';
import '../../../../core/utils/custom_small_button.dart';
import '../../../../core/utils/custom_text_field.dart';
import '../../../../core/utils/custom_text_field_with_divider.dart';

class CompleteYourProfileView extends StatelessWidget {
  const CompleteYourProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(title: 'الملف الشخصي', backText: 'تخطي',),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 61,
            ),
            const Center(child: CustomCircleAvatar()),
            const SizedBox(
              height: 42,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'اسمك بالكامل'),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(hintText: 'شارعك'),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                hintText: 'مدينتك',
                prefixIcon: Icon(FontAwesomeIcons.angleDown),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextFieldWithDivider(
                hintText: 'ادخل رقم هاتفك',
                suffixIcon: Icon(FontAwesomeIcons.angleDown),
              ),
            ),
             const SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSmallButton(
                    text: 'حفظ', isActive: true, onPressed: () {}),
                CustomSmallButton(
                    text: 'الغاء', isActive: false, onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
