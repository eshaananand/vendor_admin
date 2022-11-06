import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/views/widgets/bottom_bar.dart';
import 'package:vendor_admin/views/widgets/custom_tile.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';

class Vendors extends StatelessWidget {
  var pageController;
  Vendors({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 60.0, top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Vendor",
                  style: fontStyle(
                    color: HexColor("555454"),
                    size: 25,
                    fontWeight: bold,
                  ),
                ),
              ),
              SizedBox(
                width: w * 0.8,
                height: 241,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 4,
                  children: <Widget>[
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/vendors_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 17;
                        },
                        title: "New Vendor\nRequested",
                        footerColor: HexColor("4CAF50"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/category_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 18;
                        },
                        title: "Vendor\nDetails",
                        footerColor: HexColor("F32D2D"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/products_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 19;
                        },
                        title: "Vendor\nGalleries",
                        footerColor: HexColor("4687FF"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/orange_vendor_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 20;
                        },
                        title: "Vendor\nReviews",
                        footerColor: HexColor("FF8B36"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: w * 0.8,
                height: 250,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 4,
                  children: <Widget>[
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/orange_discount_custom_tile.png",
                        onTap: () {},
                        title: "Vendor\nDiscount",
                        footerColor: HexColor("FF8B36"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SizedBox(
                        height: customTileHeight,
                        width: customTileWidth,
                        child: CustomTile(
                          imagePath: "assets/earning_custom_tile.png",
                          onTap: () {
                            pageController.index.value = 21;
                          },
                          title: "Payment \nHistory",
                          footerColor: HexColor("4687FF"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/green_earning_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 22;
                        },
                        title: "Refer &\nEarn",
                        footerColor: HexColor("4CAF50"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: page,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Material(
                        elevation: 10,
                        child: SizedBox(
                          height: h * 0.6,
                          width: page * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(space),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Earnings',
                                      style: fontStyle(
                                        color: black,
                                        fontWeight: bold,
                                        size: 23,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "All Payments",
                                        style: fontStyle(
                                            color: accentColor, size: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: space, top: space),
                                child: Text("Rs 1500",
                                    style: fontStyle(color: black, size: 28)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: space),
                                child: Text(
                                  "Earning over time",
                                  style: fontStyle(color: black, size: 18),
                                ),
                              ),
                              const Center(child: Text("Graph here"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 40),
                          child: Container(
                            width: w * 0.4,
                            height: h * 0.6,
                            color: Colors.white,
                            child: Table(
                              columnWidths: const {
                                0: FlexColumnWidth(2),
                                1: FlexColumnWidth(3),
                                2: FlexColumnWidth(4),
                                3: FlexColumnWidth(2),
                              },
                              children: [
                                TableRow(
                                    decoration: BoxDecoration(
                                      color: accentColor,
                                    ),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 6, left: 20, bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Shops",
                                              style: fontStyle(
                                                  color: white,
                                                  size: 16,
                                                  fontWeight: bold),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Image',
                                              style: fontStyle(
                                                color: white,
                                                size: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 35, left: 20, bottom: 10),
                                        child: Text('Shop',
                                            style: fontStyle(
                                              color: white,
                                              size: 15,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 35, left: 20, bottom: 10),
                                        child: Text('Address',
                                            style: fontStyle(
                                              color: white,
                                              size: 15,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 35, left: 20, bottom: 10),
                                        child: Text('Action',
                                            style: fontStyle(
                                              color: white,
                                              size: 15,
                                            )),
                                      ),
                                    ]),
                                const TableRow(children: [
                                  Text('Cell 4'),
                                  Text('Cell 5'),
                                  Text('Cell 6'),
                                  Text('Cell 6'),
                                ])
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const BottomBar(),
            ],
          ),
        ),
      )),
    );
  }
}
