import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/views/widgets/bottom_bar.dart';
import 'package:vendor_admin/views/widgets/custom_tile.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/theme.dart';

class Payment extends StatelessWidget {
  var pageController;
  Payment({super.key, this.pageController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 60.0, top: 10),
        child: SingleChildScrollView(
          child: SizedBox(
            height: h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Payment",
                    style: fontStyle(
                      color: HexColor("555454"),
                      size: 25,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: h / 2),
                  child: SizedBox(
                    width: w * 0.8,
                    height: 241,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            height: customTileHeight,
                            width: customTileWidth,
                            child: CustomTile(
                              imagePath: "assets/red_earning_custom_tile.png",
                              onTap: () {},
                              title: "Delivery \nStatus",
                              footerColor: HexColor("F32D2D"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            height: customTileHeight,
                            width: customTileWidth,
                            child: CustomTile(
                              imagePath: "assets/riders_custom_tile.png",
                              onTap: () {},
                              title: "Approve \nDelivery",
                              footerColor: HexColor("FF8B36"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            height: customTileHeight,
                            width: customTileWidth,
                            child: CustomTile(
                              imagePath: "assets/earning_custom_tile.png",
                              onTap: () {},
                              title: "Payment \nHistory",
                              footerColor: HexColor("4687FF"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const BottomBar(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
