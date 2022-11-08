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

class EditNewProduct extends StatelessWidget {
  var pageController;
  EditNewProduct({super.key, this.pageController});

  TextEditingController nameControl = TextEditingController();
  TextEditingController priceControl = TextEditingController();
  TextEditingController discountControl = TextEditingController();
  TextEditingController subCategoryControl = TextEditingController();
  TextEditingController descriptionControl = TextEditingController();
  TextEditingController capacityControl = TextEditingController();
  TextEditingController unitControl = TextEditingController();
  TextEditingController categoryControl = TextEditingController();

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
                  "Edit New Product",
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
                    height: h * 1.6,
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
                                  pageController.index.value = 29;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.list,
                                      color: HexColor("555454"),
                                    ),
                                    const Text("  New Product List    "),
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
                                            Icon(Icons.edit, color: white),
                                            Text(
                                              "  Edit New Product",
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
                                            subtitle: "Insert name")
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
                                      top: 20.0, left: 75),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Price  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          controller: priceControl,
                                          subtitle: "Insert price number")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 50),
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
                                          subtitle: "Insert Discount Price")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 25),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Description  ",
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
                                          subtitle: "Enter Description")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 45),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Capacity  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          line: 3,
                                          controller: capacityControl,
                                          subtitle: "Enter Capacity")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 75),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Unit  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                          controller: unitControl,
                                          subtitle: "Insert unit")
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
                                            top: 13.0, left: 40),
                                        child: Text(
                                          "Category  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                        controller: categoryControl,
                                        subtitle: "Insert Category",
                                      )
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
                                            top: 13.0, left: 15),
                                        child: Text(
                                          "Subcategory  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      CustomFormField(
                                        controller: subCategoryControl,
                                        subtitle: "Insert Subcategory",
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20.0,
                                    left: 40,
                                  ),
                                  child: Column(
                                    children: [
                                      Obx(
                                        () => Row(
                                          children: [
                                            Text(
                                              "Featured",
                                              style: fontStyle(
                                                fontWeight: bold,
                                                size: 15,
                                              ),
                                            ),
                                            isFeatured.value
                                                ? IconButton(
                                                    icon: Icon(Icons.check_box,
                                                        color: accentColor),
                                                    onPressed: () {
                                                      isFeatured.value = false;
                                                    },
                                                  )
                                                : IconButton(
                                                    icon: Icon(Icons
                                                        .crop_square_rounded),
                                                    onPressed: () {
                                                      isFeatured.value = true;
                                                    },
                                                  )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Obx(
                                            () => Row(
                                              children: [
                                                Text(
                                                  "Available for Delivery",
                                                  style: fontStyle(
                                                    fontWeight: bold,
                                                    size: 15,
                                                  ),
                                                ),
                                                isForDelivery.value
                                                    ? IconButton(
                                                        icon: Icon(
                                                            Icons.check_box,
                                                            color: accentColor),
                                                        onPressed: () {
                                                          isForDelivery.value =
                                                              false;
                                                        },
                                                      )
                                                    : IconButton(
                                                        icon: Icon(Icons
                                                            .crop_square_rounded),
                                                        onPressed: () {
                                                          isForDelivery.value =
                                                              true;
                                                        },
                                                      )
                                              ],
                                            ),
                                          ),
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
