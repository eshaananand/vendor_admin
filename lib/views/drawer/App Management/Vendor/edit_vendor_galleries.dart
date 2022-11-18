import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/views/widgets/custom_form_field.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';

class EditVendorGalleries extends StatelessWidget {
  var pageController;
  EditVendorGalleries({super.key, this.pageController});

  TextEditingController descriptionControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    "Edit Vendor Galleries",
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
                      height: h * 0.9,
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
                                    pageController.index.value = 19;
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.list,
                                        color: HexColor("555454"),
                                      ),
                                      const Text("  Vendor Galleries    "),
                                      Material(
                                        elevation: 5,
                                        child: Container(
                                          height: 30,
                                          width: 120,
                                          decoration:
                                              BoxDecoration(color: accentColor),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.edit, color: white),
                                              Text(
                                                "  Edit Galleries",
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
                              padding: EdgeInsets.all(space),
                              child: Column(
                                children: [
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
                                            "Shop  Description  ",
                                            style: fontStyle(
                                              color: black,
                                              fontWeight: bold,
                                              size: 14,
                                            ),
                                          ),
                                        ),
                                        CustomFormField(
                                            line: 5,
                                            width: 300,
                                            controller: descriptionControl,
                                            subtitle: "Insert Shop Description")
                                      ],
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 13.0),
                                        child: Text(
                                          "Shop  Description  ",
                                          style: fontStyle(
                                            color: black,
                                            fontWeight: bold,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 13.0, left: 30),
                                        child: Container(
                                          height: 150,
                                          width: 300,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 0.5,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child:
                                              Image.asset("assets/upload.png"),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: w * 0.25, top: h * 0.1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                              BorderRadius.circular(5),
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
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Material(
                                        elevation: 5,
                                        child: Container(
                                          width: 130,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: HexColor("555454")
                                                .withOpacity(0.57),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                CupertinoIcons.repeat,
                                                color: white,
                                                size: 16,
                                              ),
                                              Text(
                                                " Cancel",
                                                style: fontStyle(
                                                    color: white,
                                                    fontWeight: bold,
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
                      ),
                    ),
                  ),
                ),
                const BottomBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
