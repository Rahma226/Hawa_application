import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/password_body.dart';

import '../../../../shared/models/headline_model.dart';

class SetNewPasswordView extends StatelessWidget {
  const SetNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'تعيين كلمة مرور جديدة',
      smallText: 'قم بتعيين كلمة المرور الجديدة الخاصة بك',
    );
    return Scaffold(
      appBar: const CustomAppBar(backText: 'رجوع',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PasswordBody(headlineModel: headlineModel),
            CustomButton(
                text: 'حفظ',
                isActive: true,
                onPressed: () {
                  context.go(AppRouter.kCompleteYourProfileView);
                }),
          ],
        ),
      ),
    );
  }
}
