import 'package:flutter/material.dart';
import 'package:hawa_application/core/utils/custom_button.dart';
import 'image_selection_modal.dart';

void showChangeImageDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top Handle
            Container(
              width: double.infinity,
              height: 5,
              margin: const EdgeInsets.symmetric(horizontal: 120),
              decoration: BoxDecoration(
                color: const Color(0xff2A2A2A),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const SizedBox(height: 19),

            // Title & Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 24),
                const Text(
                  'قم بتغيير الصورة',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff49AAEF),
                    fontFamily: 'Cairo',
                  ),
                ),
                IconButton(
                  icon:
                      const Icon(Icons.close, size: 26, color: Colors.black54),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),

            // Divider
            const Divider(thickness: 1.5, color: Color(0xffE0E0E0)),
            const SizedBox(height: 59),

            // Profile Picture
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                showImageSelectionModal(context);
              },
              child: const CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage('assets/images/default_profile.jpg'),
              ),
            ),
            const SizedBox(height: 89),

            // Save Button
            CustomButton(
              text: 'حفظ',
              isActive: true,
              onPressed: () => Navigator.pop(context),
            ),
            const SizedBox(height: 52),
          ],
        ),
      );
    },
  );
}
