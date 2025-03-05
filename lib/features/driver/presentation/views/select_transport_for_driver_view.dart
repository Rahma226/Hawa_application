import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawaa_app/core/utils/app_router.dart';
import 'package:hawaa_app/core/utils/custom_app_bar.dart';
import 'package:hawaa_app/core/utils/custom_button.dart';
import 'package:hawaa_app/features/driver/presentation/views/widgets/transport_grid.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';

class SelectTransportForDriverView extends StatelessWidget {
  const SelectTransportForDriverView({super.key});

  @override
  Widget build(BuildContext context) {
    HeadlineModel headlineModel = HeadlineModel(
      largeText: 'اختر وسيلة النقل الخاصة بك',
    );

    return Scaffold(
      appBar: const CustomAppBar(
        backText: 'رجوع',
      ),
      body: Column(
        children: [
          const SizedBox(height: 32), 
          Headline(headlineModel: headlineModel),
          const SizedBox(height: 67), 
          const Expanded(child: TransportGrid()),
          CustomButton(
            text: 'التالي',
            isActive: true,
            onPressed: () {
              context.go(AppRouter.kDriverRegistretionView);
            },
          ),
          const SizedBox(height: 80), 
        ],
      ),
    );
  }
}
