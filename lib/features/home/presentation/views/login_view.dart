import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/core/utils/custom_text_field.dart';
import 'package:hawaa_app/core/utils/custom_text_field_number.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';

import '../../../../shared/models/headline_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'قم بتسجيل الدخول لحسابك',
      smallText: 'ادخل رقم هاتفك وكلمة المرور',
    );
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 131),
            child: Headline(headlineModel: headlineModel),
          ),
          const SizedBox(
            height: 75,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextFieldNumber(hintText: 'ادخل رقم هاتفك'),
          ),
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomTextField(
              hintText: 'أدخل  كلمة المرور',
              prefixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only( left: 16),
            child: Align(
              alignment: Alignment.centerLeft, 
              child: TextButton(
                onPressed: () {
                  context.go(AppRouter.kVerifyNumberView);
                },
                child: const Text(
                  'نسيت كلمة المرور ؟',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Cairo',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 188,
          ),
          CustomButton(text: 'تسجيل دخول', isActive: true, onPressed: () {}),
          const Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ليس لديك حساب؟',
                    style: TextStyle(
                      color: Color(0xff56595B),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'أنشئ حساب',
                    style: TextStyle(
                      color: Color(0xff49AAEF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
