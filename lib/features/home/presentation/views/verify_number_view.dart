import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/custom_text_field_number.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';

import '../../../../shared/models/headline_model.dart';

class VerifyNumberView extends StatelessWidget {
  const VerifyNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: ' تأكيد رقم الهاتف',
      smallText: 'ادخل رقم هاتفك',
    );
    return Scaffold(
      appBar:const CustomAppBar(backText: 'رجوع',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 39,),
            Headline(headlineModel: headlineModel),
            const SizedBox(height: 75,),
           const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16),
              child:  CustomTextFieldNumber(hintText: 'ادخل رقم هاتفك'),
            ),
            const SizedBox(
              height: 298,
            ),
             CustomButton(
              text: 'ارسل رمز التحقق', 
              isActive: true, 
              onPressed: (){
                context.go(AppRouter.kForgetPasswordView);
              }),
          ],
        ),
      ),
    );
  }
}