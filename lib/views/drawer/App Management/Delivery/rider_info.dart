import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';

import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';

class RiderInfo extends StatelessWidget {
  RiderInfo({super.key});
  double spacing = 30;
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
            child: SizedBox(
              height: h * 1.22,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "Vendor Information",
                          style: fontStyle(
                            color: HexColor("555454"),
                            size: 25,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 20,
                          right: 60,
                        ),
                        child: Center(
                          child: SingleChildScrollView(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: h * 0.9,
                                                child: Row(
                                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Name",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Bussiness name",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Address",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Phone",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Age",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Instagram",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Facebook",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Vendor Image",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "GST Bill Image",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Aadhar Front",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Aadhar Back",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Shop Document",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: spacing),
                                                          child: Text(
                                                            "Voter ID",
                                                            style: fontStyle(
                                                              fontWeight: bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 100.0,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "Demo name",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "Bussiness name",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "Demo address",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "123456789",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "12",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "123@insta.com",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "123@face.com",
                                                              style: fontStyle(
                                                                color: HexColor(
                                                                    "555454"),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Imaege.txt  ",
                                                                  style:
                                                                      fontStyle(
                                                                    color: HexColor(
                                                                        "555454"),
                                                                  ),
                                                                ),
                                                                InkWell(
                                                                  onTap: () {},
                                                                  child: Icon(
                                                                    Icons
                                                                        .download,
                                                                    color:
                                                                        accentColor,
                                                                    size: 16,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: w * 0.2, top: spacing),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    height: h * 0.8,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Shop Image",
                                                              style: fontStyle(
                                                                fontWeight:
                                                                    bold,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          spacing),
                                                              child: Text(
                                                                "Store",
                                                                style:
                                                                    fontStyle(
                                                                  fontWeight:
                                                                      bold,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          spacing),
                                                              child: Text(
                                                                "Pincode",
                                                                style:
                                                                    fontStyle(
                                                                  fontWeight:
                                                                      bold,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          spacing),
                                                              child: Text(
                                                                "GST no.",
                                                                style:
                                                                    fontStyle(
                                                                  fontWeight:
                                                                      bold,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          spacing),
                                                              child: Text(
                                                                "Time of Shopping",
                                                                style:
                                                                    fontStyle(
                                                                  fontWeight:
                                                                      bold,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 100.0,
                                                          ),
                                                          child: SizedBox(
                                                            width: w * 0.1,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      "Imaege.txt  ",
                                                                      style:
                                                                          fontStyle(
                                                                        color: HexColor(
                                                                            "555454"),
                                                                      ),
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {},
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .download,
                                                                        color:
                                                                            accentColor,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: spacing),
                                                                  child: Text(
                                                                    "Demo address",
                                                                    style:
                                                                        fontStyle(
                                                                      color: HexColor(
                                                                          "555454"),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: spacing),
                                                                  child: Text(
                                                                    "1234567890987654",
                                                                    style:
                                                                        fontStyle(
                                                                      color: HexColor(
                                                                          "555454"),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: spacing),
                                                                  child: Text(
                                                                    "1234567890987654",
                                                                    style:
                                                                        fontStyle(
                                                                      color: HexColor(
                                                                          "555454"),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                              top: spacing),
                                                                  child: Text(
                                                                    "12/00/00",
                                                                    style:
                                                                        fontStyle(
                                                                      color: HexColor(
                                                                          "555454"),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const BottomBar()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
