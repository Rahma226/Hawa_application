import 'package:flutter/material.dart';

import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text_field.dart';
import '../../../../shared/models/headline_model.dart';
import '../../../home/presentation/views/widgets/headline.dart';


class ResidentialAddressInfoView extends StatelessWidget {
  const ResidentialAddressInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
        largeText: 'اضف عنوانك الشخصي', smallText: 'املأ جميع بياناتك');
    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع'),
      body: Column(
        children: [
          const SizedBox(
            height: 52,
          ),
          Headline(headlineModel: headlineModel),
          const SizedBox(
            height: 56,
          ),
         const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child:  CustomTextField(hintText: 'المحافظة'),
          ),
          const SizedBox(
            height: 25,
          ),
         const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child:  CustomTextField(hintText: 'الحي'),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child:  CustomTextField(hintText: 'الشارع'),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16),
            child:  CustomTextField(hintText: 'رقم العمارة او المنزل'),
          ),
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
