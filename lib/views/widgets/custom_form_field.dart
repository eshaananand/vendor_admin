import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/colors.dart';
import '../../constants/theme.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
    required this.controller,
    required this.subtitle,
    this.line = 1,
    this.width = 190,
    this.onChanged,
    this.borderRadius = 5.0,
  });
  ValueChanged<String>? onChanged;
  TextEditingController controller;
  int line;
  double width = 190;
  String subtitle;
  double borderRadius = 5.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      width: width,
                      child: TextFormField(
                        onChanged: onChanged,
                        maxLines: line,
                        minLines: line,
                        controller: controller,
                        style: fontStyle(size: 15),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      subtitle,
                      style: fontStyle(
                        color: HexColor("555454"),
                        size: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
