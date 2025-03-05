import 'package:flutter/material.dart';

void showImageSelectionModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Center(
                child: Text('من المعرض',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text('التقط صورة',
                    style: TextStyle(fontSize: 18, color: Colors.black87)),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text('إلغاء',
                    style: TextStyle(fontSize: 18, color: Colors.red)),
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    },
  );
}
