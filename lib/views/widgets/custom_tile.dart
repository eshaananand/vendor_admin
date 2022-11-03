import 'package:flutter/material.dart';

import '../../constants/colors.dart';

import '../../constants/size.dart';
import '../../constants/theme.dart';

class CustomTile extends StatelessWidget {
  String? title = "";
  String subtitle = "";
  String? imagePath;
  GestureTapCallback? onTap;
  Color? footerColor;

  CustomTile(
      {super.key,
      required this.title,
      this.subtitle = "",
      required this.imagePath,
      required this.onTap,
      required this.footerColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: customTileHeight,
        width: customTileWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Material(
              elevation: 15,
              child: Stack(
                children: [
                  Image.asset(
                    imagePath!,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title!,
                          style: fontStyle(
                            color: white,
                            fontWeight: bold,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            subtitle,
                            style: fontStyle(
                              color: white,
                              fontWeight: bold,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: onTap,
              child: Material(
                elevation: 15,
                child: Container(
                    height: 32,
                    width: customTileWidth,
                    color: footerColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "More Info",
                          style: fontStyle(
                            color: white.withOpacity(0.74),
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_circle_right_rounded,
                          color: white.withOpacity(0.74),
                          size: 18,
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
