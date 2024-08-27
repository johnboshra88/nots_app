import 'package:flutter/material.dart';

class CustomeSearchItem extends StatelessWidget {
  const CustomeSearchItem({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.08),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Icon(
          icon,
          size: 25,
        ),
      ),
    );
  }
}
