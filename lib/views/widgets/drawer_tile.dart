import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/size.dart';

import '../../constants/theme.dart';

class DrawerTile extends StatelessWidget {
  IconData? icon;
  String? title;
  Color? color;
  DrawerTile({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: space * 0.3, bottom: space * 0.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          title != "   Payment"
              ? Icon(
                  icon!,
                  color: color!,
                  size: 40,
                )
              : Icon(
                  icon!,
                  color: color!,
                  size: 25,
                ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title!,
            style:
                fontStyle(color: color!, size: 20, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
