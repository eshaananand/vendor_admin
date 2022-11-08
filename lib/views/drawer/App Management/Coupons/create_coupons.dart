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

class CreateCoupons extends StatelessWidget {
  var pageController;
  CreateCoupons({super.key, this.pageController});

  TextEditingController codeControl = TextEditingController();
  TextEditingController discountTypeControl = TextEditingController();
  TextEditingController discountControl = TextEditingController();
  TextEditingController productsControl = TextEditingController();
  TextEditingController descriptionControl = TextEditingController();
  TextEditingController shopControl = TextEditingController();
  TextEditingController categoriesControl = TextEditingController();
  TextEditingController expiresControl = TextEditingController();

  RxBool isEnabled = false.obs;
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
                  "Create Coupons",
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
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  pageController.index.value = 7;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.list,
                                      color: HexColor("555454"),
                                    ),
                                    const Text("  Coupons List    "),
                                    Material(
                                      elevation: 5,
                                      child: Container(
                                        height: 30,
                                        width: 160,
                                        decoration:
                                            BoxDecoration(color: accentColor),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.add_circle,
                                                color: white),
                                            Text(
                                              "  Create Coupons",
                                              style: fontStyle(color: white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 13.0, left: 75),
                                      child: Text(
                                        "Code   ",
                                        style: fontStyle(
                                          color: black,
                                          fontWeight: bold,
                                          size: 14,
                                        ),
                                      ),
                                    ),
                                    CustomFormField(
                                        controller: codeControl,
                                        subtitle: "Insert code")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Discount Type  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          controller: discountTypeControl,
                                          subtitle: "Select Discount Type")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 60),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Discount  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          controller: discountControl,
                                          subtitle: "Select Discount")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 48),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Description",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          line: 3,
                                          controller: descriptionControl,
                                          subtitle: "Select Description")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 60),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Products  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          controller: productsControl,
                                          subtitle:
                                              "Coupon applied on selected products")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 13.0, left: 75),
                                        child: Text(
                                          "Shops  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                        controller: shopControl,
                                        subtitle:
                                            "Coupon applied on selected shops",
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                    left: 70,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(
                                            () => Row(
                                              children: [
                                                Text(
                                                  "Active",
                                                  style: fontStyle(
                                                    fontWeight: bold,
                                                    size: 15,
                                                  ),
                                                ),
                                                isEnabled.value
                                                    ? IconButton(
                                                        icon: Icon(
                                                            Icons.check_box,
                                                            color: accentColor),
                                                        onPressed: () {
                                                          isEnabled.value =
                                                              false;
                                                        },
                                                      )
                                                    : IconButton(
                                                        icon: const Icon(Icons
                                                            .crop_square_rounded),
                                                        onPressed: () {
                                                          isEnabled.value =
                                                              true;
                                                        },
                                                      )
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 150.0),
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
                                                          decoration:
                                                              BoxDecoration(
                                                            color: accentColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              "Save Chnages",
                                                              style: fontStyle(
                                                                  color: white,
                                                                  fontWeight:
                                                                      bold,
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
                                                              color: HexColor(
                                                                      "555454")
                                                                  .withOpacity(
                                                                      0.57),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
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
                                                                      color:
                                                                          white,
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
