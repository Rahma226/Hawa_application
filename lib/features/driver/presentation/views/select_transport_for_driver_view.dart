import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/transport_grid.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/custom_app_bar.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../shared/models/headline_model.dart';
import '../../../home/presentation/views/widgets/headline.dart';


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
