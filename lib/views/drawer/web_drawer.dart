import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../constants/colors.dart';
import '../../constants/custom_icons.dart';
import '../../constants/size.dart';
import '../../constants/theme.dart';
import '../../controller/page_controller.dart';
import '../widgets/drawer_tile.dart';

class WebDrawer extends StatelessWidget {
  var pageController;
  WebDrawer({super.key, this.pageController});
  // var controller = Get.put(PageIndexController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Obx(
        () => ListView(
          children: [
            Container(
              height: h * 0.2,
              width: double.infinity,
              color: accentColor,
              child: Center(
                child: Text(
                  "Logo",
                  style: fontStyle(
                    color: white,
                    fontWeight: bold,
                    size: 18,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: space * 2.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        pageController.index.value = 0;
                      },
                      child: DrawerTile(
                        title: "Dashboard",
                        icon: Icons.speed,
                        color: pageController.index.value == 0
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 1;
                      },
                      child: DrawerTile(
                        title: "Favourites",
                        icon: CupertinoIcons.heart_fill,
                        color: pageController.index.value == 1
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, bottom: 18),
                      child: Text(
                        "App Management",
                        style: fontStyle(
                          color: HexColor("555454").withOpacity(0.87),
                          size: 18,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 2;
                      },
                      child: DrawerTile(
                        title: "Customers",
                        icon: Icons.group,
                        color: pageController.index.value == 2
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 3;
                      },
                      child: DrawerTile(
                        title: "Vendor",
                        icon: CustomIcon.shop,
                        color: pageController.index.value == 3
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 4;
                      },
                      child: DrawerTile(
                        title: "Categories",
                        icon: CupertinoIcons.rectangle_grid_2x2_fill,
                        color: pageController.index.value == 4
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 5;
                      },
                      child: DrawerTile(
                        title: "Products",
                        icon: CupertinoIcons.cube_box,
                        color: pageController.index.value == 5
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 6;
                      },
                      child: DrawerTile(
                        title: "Orders",
                        icon: Icons.shopping_bag,
                        color: pageController.index.value == 6
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 7;
                      },
                      child: DrawerTile(
                        title: "Coupons",
                        icon: CustomIcon.coupons,
                        color: pageController.index.value == 7
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 8;
                      },
                      child: DrawerTile(
                        title: "Delivery",
                        icon: CustomIcon.bike,
                        color: pageController.index.value == 8
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 9;
                      },
                      child: DrawerTile(
                        title: "Global Icome",
                        icon: CustomIcon.cash,
                        color: pageController.index.value == 9
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, bottom: 18),
                      child: Text(
                        "Settings",
                        style: fontStyle(
                          color: HexColor("555454").withOpacity(0.87),
                          size: 18,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 10;
                      },
                      child: DrawerTile(
                        title: "Banner",
                        icon: CustomIcon.banner,
                        color: pageController.index.value == 10
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 11;
                      },
                      child: DrawerTile(
                        title: "   Payment",
                        icon: CustomIcon.payment,
                        color: pageController.index.value == 11
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pageController.index.value = 12;
                      },
                      child: DrawerTile(
                        title: "Support",
                        icon: Icons.support_agent,
                        color: pageController.index.value == 12
                            ? accentColor
                            : HexColor("555454"),
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     pageController.index.value = 13;
                    //   },
                    //   child: DrawerTile(
                    //     title: "Notification",
                    //     icon: CustomIcon.bell,
                    //     color: pageController.index.value == 13
                    //         ? accentColor
                    //         : HexColor("555454"),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
