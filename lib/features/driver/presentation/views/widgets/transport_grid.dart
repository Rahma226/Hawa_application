import 'package:flutter/material.dart';
import 'package:hawa_application/features/driver/presentation/views/widgets/transport_option.dart';

class TransportGrid extends StatefulWidget {
  const TransportGrid({super.key});

  @override
  _TransportGridState createState() => _TransportGridState();
}

class _TransportGridState extends State<TransportGrid> {
  String? selectedTransport; 

  final List<Map<String, dynamic>> transportOptions = const [
    {"imagePath": 'assets/images/Car.png', "label": "سيارة"},
    {"imagePath": 'assets/images/Bike.png', "label": "موتوسيكل"},
    {"imagePath": 'assets/images/Cycle.png', "label": "دراجة"},
    {"imagePath": 'assets/images/pic.png', "label": "تروسيكل"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: transportOptions.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          final item = transportOptions[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTransport = item["label"]; 
              });
            },
            child: TransportOption(
              imagePath: item["imagePath"],
              label: item["label"],
              isSelected: selectedTransport == item["label"], 
            ),
          );
        },
      ),
    );
  }
}
