import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/driver_or_customer_view_body.dart';
import 'package:hawaa_app/shared/models/splash_view_body_model.dart';
import '../../../../core/utils/custom_button.dart';

class DriverOrCustomerView extends StatelessWidget {
  const DriverOrCustomerView({super.key});

  @override
  Widget build(BuildContext context) {
    SplashViewBodyModel bodyModel = SplashViewBodyModel(
      photo: 'assets/images/Welcome Screen.png',
      largeText: 'اختر دورك',
      smallText:
          'حدد إذا كنت سائقاً لتوصيل الركاب والطلبات أو\nراكباً للتنقل بسهولة وأمان',
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DriverOrCustomerViewBody(bodyModel: bodyModel),
          const SizedBox(height: 20),
          CustomButton(
            text: ' سائق',
            isActive: true,
            onPressed: () {
              context.go(AppRouter.kSelectTransportForDriverView);
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            text: ' راكب',
            isActive: true,
            onPressed: () {
              context.go(AppRouter.kCustomerLoginOrSignupView);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
