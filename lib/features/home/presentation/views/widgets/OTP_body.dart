import 'package:flutter/material.dart';
import 'package:hawaa_app/features/home/presentation/views/widgets/headline.dart';
import 'package:hawaa_app/shared/models/headline_model.dart';
import '../../../../../core/utils/otp_text_field.dart';

class OTPbody extends StatelessWidget {
  const OTPbody({
    super.key,
    required this.headlineModel,
  });

  final HeadlineModel headlineModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 52),
          child: Headline(headlineModel: headlineModel),
        ),
        const SizedBox(
          height: 42,
        ),
        const OTPTextField(),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'أعد الإرسال مرة أخرى',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff49AAEF),
                    fontFamily: 'Cairo'),
              ),
            ),
            const Text(
              'لم تستلم الرمز؟',
              style: TextStyle(
                  color: Color(0xff56595B),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Cairo'),
            ),
          ],
        ),
        const SizedBox(
          height: 170,
        ),
        
      ],
    );
  }
}
