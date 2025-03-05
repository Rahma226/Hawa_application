import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/OTP_body.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

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
