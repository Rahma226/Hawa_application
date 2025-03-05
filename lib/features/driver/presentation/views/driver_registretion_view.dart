import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawa_application/core/utils/app_router.dart';
import 'package:hawa_application/core/utils/custom_app_bar.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/driver_text_field.dart';
import 'package:hawa_application/features/home/presentation/views/widgets/headline.dart';
import 'package:hawa_application/shared/models/headline_model.dart';

import '../../../../core/utils/custom_button.dart';


class DriverRegistrationView extends StatelessWidget {
  const DriverRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
     HeadlineModel headlineModel = HeadlineModel(
      largeText: 'تسجيل دخولك كسائق',
      smallText: 'املأ جميع بياناتك',
    );
    return Scaffold(
      appBar:const CustomAppBar(backText: 'رجوع')  ,
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 52,
            ),
            Headline(headlineModel: headlineModel),
            const SizedBox(height: 49),
            DriverField(
              label: "بياناتك الشخصية",
            onTap: () {
              context.go(AppRouter.kPersonalInfoView);
            },
            ),
            DriverField(
              label: "رخصة القيادة",
              onTap: () {
                context.go(AppRouter.kDrivingLicenseInfo);
              },
            ),
            DriverField(
              label: "رخصة السيارة",
              onTap:  () {
                context.go(AppRouter.kCarLicenseView);
              },
            ),
            DriverField(
              label: "شهادة حسن السيرة والسلوك",
              onTap:  () {
                context.go(AppRouter.kCertificateView);
              },
            ),
            DriverField(
              label: "عنوان السكن",
              onTap:  () {
                context.go(AppRouter.kResidentialAddress);
              },
            ),
            const SizedBox(height: 52),
            CustomButton(
              text: 'تم', 
              isActive: true, 
              onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
