import 'package:flutter/material.dart';
import 'package:vendor_admin/constants/colors.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: accentColor.withOpacity(0.87),
    );
  }
}
