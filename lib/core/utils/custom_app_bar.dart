import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String backText;
  final String? title; // Made nullable
  final VoidCallback? backRoute;

  const CustomAppBar({
    super.key,
    required this.backText,
    this.title, // Nullable title
    this.backRoute,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Back button with text
          GestureDetector(
            onTap: backRoute ?? () => Navigator.pop(context),
            child: Row(
              children: [
                Text(
                  backText,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xffA6A6A6),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset('assets/images/angle-left.png'),
              ],
            ),
          ),

          // Centered Title (Only show if not null)
          if (title != null) ...[
            const Spacer(),
            Text(
              title!,
              style: const TextStyle(
                color: Color(0xff2A2A2A),
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: 'Cairo',
              ),
            ),
            const Spacer(),
          ],

          // Invisible widget to balance layout
          Opacity(
            opacity: 0,
            child: Row(
              children: [
                Text(
                  backText,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xffA6A6A6),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset('assets/images/angle-left.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
