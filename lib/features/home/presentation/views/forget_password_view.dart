import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/OTP_body.dart';

import '../../../../shared/models/headline_model.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'نسيت كلمة المرور',
      smallText: 'تم ارسال الرمز إلى ****** ***02',
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OTPbody(headlineModel: headlineModel),
            CustomButton(
                text: 'تحقق',
                isActive: true,
                onPressed: () {
                  context.go(AppRouter.kSetNewPasswordView);
                })
          ],
        ),
      ) ,
    );
  }
}