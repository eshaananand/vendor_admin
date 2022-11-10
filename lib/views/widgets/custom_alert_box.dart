import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constants/colors.dart';
import '../../constants/theme.dart';

class CustomAlertBox {
  static Future<dynamic> dialogBox({
    GestureTapCallback? onYesTap,
    GestureTapCallback? onCancelTap,
  }) {
    return Get.defaultDialog(
      titlePadding: const EdgeInsets.only(top: 20),
      title: "Are you sure you want \nto delete?",
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onYesTap,
              child: Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Yes",
                    style: fontStyle(
                      color: white,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: InkWell(
                onTap: onCancelTap,
                child: Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: HexColor("555454").withOpacity(0.57),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.repeat,
                        color: white,
                        size: 12,
                      ),
                      Text(
                        " Cancel",
                        style: fontStyle(
                          color: white,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
