import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';

import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';

class CustomerInfo extends StatelessWidget {
  CustomerInfo({super.key});
  double spacing = 30;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 60.0,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    "Customer Information",
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
                          height: h * 0.8,
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
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: h * 0.4,
                                          child: Row(
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: spacing),
                                                    child: Text(
                                                      "Name",
                                                      style: fontStyle(
                                                        fontWeight: bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: spacing),
                                                    child: Text(
                                                      "Email",
                                                      style: fontStyle(
                                                        fontWeight: bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: spacing),
                                                    child: Text(
                                                      "Phone",
                                                      style: fontStyle(
                                                        fontWeight: bold,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: spacing),
                                                    child: Text(
                                                      "Image",
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
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: spacing),
                                                      child: Text(
                                                        "Demo name",
                                                        style: fontStyle(
                                                          color: HexColor(
                                                              "555454"),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: spacing),
                                                      child: Text(
                                                        "Demoemail@gmail.com",
                                                        style: fontStyle(
                                                          color: HexColor(
                                                              "555454"),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: spacing),
                                                      child: Text(
                                                        "+91" + " 1234567890",
                                                        style: fontStyle(
                                                          color: HexColor(
                                                              "555454"),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: spacing),
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
                                                            style: fontStyle(
                                                              color: HexColor(
                                                                  "555454"),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Icon(
                                                              Icons.download,
                                                              color:
                                                                  accentColor,
                                                              size: 20,
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
                                      padding: EdgeInsets.only(left: w * 0.2),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                              height: h * 0.3,
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Address",
                                                        style: fontStyle(
                                                          fontWeight: bold,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: spacing),
                                                        child: Text(
                                                          "Account no.",
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
                                                          "IFSC code",
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
                                                          Text(
                                                            "Demo address",
                                                            style: fontStyle(
                                                              color: HexColor(
                                                                  "555454"),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top:
                                                                        spacing),
                                                            child: Text(
                                                              "1234567890987654",
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
                                                              "1234567890987654",
                                                              style: fontStyle(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
