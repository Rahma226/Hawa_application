import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hawa_application/core/utils/app_router.dart';
import 'package:hawa_application/features/home/presentation/views/widgets/locatin_card.dart';


class LocationPermissionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Map
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/Maps.png"), // Replace with your asset
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),

          // Centered Card UI
          Center(
            child: LocationCard(
              onLocationPressed: () {
                context.go(AppRouter.kDriverOrCustomerView);
              },
            ),
          ),
        ],
      ),
    );
  }
}
