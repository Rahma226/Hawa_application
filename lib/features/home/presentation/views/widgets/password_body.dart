
import 'package:flutter/material.dart';
import 'package:hawa_application/core/utils/custom_text_field.dart';
import 'package:hawa_application/features/home/presentation/views/widgets/headline.dart';

import '../../../../../shared/models/headline_model.dart';


class PasswordBody extends StatelessWidget {
  const PasswordBody({
    super.key,
    required this.headlineModel,
  });

  final HeadlineModel headlineModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 66,
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Headline(headlineModel: headlineModel),
        ),
        const SizedBox(
          height: 32,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            hintText: 'أنشئ كلمة المرور',
            prefixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            hintText: 'تاكيد  كلمة المرور',
            prefixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 17),
          child: Align(
            alignment:
                Alignment.centerRight, 
            child: Text(
              'يجب أن تحتوي على رقم واحد على الأقل أو رمز خاص',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'Cairo',
                color: Color(0xffA6A6A6),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 171,
        ),
        
      ],
    );
  }
}
