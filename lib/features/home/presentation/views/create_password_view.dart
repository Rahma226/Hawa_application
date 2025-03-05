import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawa_application/features/home/presentation/views/widgets/password_body.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../shared/models/headline_model.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'إنشاء كلمة مرور',
      smallText: 'قم بتعيين كلمة المرور الخاصة بك',
    );
    return Scaffold(
      appBar:const CustomAppBar(backText: 'رجوع',),
      body:SingleChildScrollView(
        child: Column(
          children: [
            PasswordBody(headlineModel: headlineModel),
            CustomButton(
                text: 'تسجيل',
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
