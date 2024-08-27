import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_icon.dart';
import 'package:nots_app/widgets/custom_not_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomeSearchItem(),
      ],
    );
  }
}
