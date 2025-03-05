import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawa_application/features/home/presentation/views/widgets/OTP_body.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../shared/models/headline_model.dart';


class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: ' تأكيد رقم الهاتف',
      smallText: 'أدخل رمز التحقق (OTP).',
    );
    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع',),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            OTPbody(headlineModel: headlineModel),
            CustomButton(
                text: 'تحقق',
                isActive: true,
                onPressed: () {
                  context.go(AppRouter.kCreatePasswordView);
                })
          ],
        ),
      ) ,
    );
  }
}
