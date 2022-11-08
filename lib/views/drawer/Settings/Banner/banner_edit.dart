import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/widgets/custom_alert_box.dart';

import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/custom_form_field.dart';

class BannerEdit extends StatelessWidget {
  var pageController;
  BannerEdit({super.key, this.pageController});

  TextEditingController nameControl = TextEditingController();

  RxBool isFeatured = false.obs;
  RxBool isForDelivery = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 60.0,
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Edit Banner",
                  style: fontStyle(
                    color: HexColor("555454"),
                    size: 25,
                    fontWeight: bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  right: 60,
                ),
                child: Center(
                  child: Container(
                    height: h,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(space),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 13.0, left: 75),
                                          child: Text(
                                            "Name   ",
                                            style: fontStyle(
                                              color: black,
                                              fontWeight: bold,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                        CustomFormField(
                                            controller: nameControl,
                                            subtitle: "Insert banner name")
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 13.0),
                                                child: Text(
                                                  "Upload Image   ",
                                                  style: fontStyle(
                                                    color: black,
                                                    fontWeight: bold,
                                                    size: 14,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 100,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 0.5,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Image.asset(
                                                    "assets/upload.png"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                    left: 40,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox.shrink(),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: 150.0, top: h * 0.5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 5,
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: 130,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: accentColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "Save Chnages",
                                                          style: fontStyle(
                                                              color: white,
                                                              fontWeight: bold,
                                                              size: 16),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 12.0),
                                                  child: InkWell(
                                                    onTap: () {},
                                                    child: Material(
                                                      elevation: 5,
                                                      child: Container(
                                                        width: 130,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              HexColor("555454")
                                                                  .withOpacity(
                                                                      0.57),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              CupertinoIcons
                                                                  .repeat,
                                                              color: white,
                                                              size: 16,
                                                            ),
                                                            Text(
                                                              " Cancel",
                                                              style: fontStyle(
                                                                  color: white,
                                                                  fontWeight:
                                                                      bold,
                                                                  size: 16),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
