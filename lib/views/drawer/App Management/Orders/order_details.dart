import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';

class OrderDetails extends StatelessWidget {
  var pageController;
  OrderDetails({super.key, this.pageController});
  RxBool isActive = true.obs;
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
                    "Order Details",
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
                      height: h * 1.4,
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
                                    pageController.index.value = 6;
                                  },
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.list,
                                        color: HexColor("555454"),
                                      ),
                                      const Text("  Order    "),
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
                                              Icon(Icons.add_circle_outlined,
                                                  color: white),
                                              Text(
                                                "  Order Details",
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
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Order ID",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 100.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "#12",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Client    ",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 100.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "#12",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Phone number",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 60.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "#12",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Delivery\nAddress",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 90.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "234, Purbanchal School Rd\nKolkata- 70084",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              "Date-of-Delivery",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 40.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "12-8-20",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              "Market",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 100.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "Tripathi Store",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Phone number",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 60.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "#12",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Delivery\nAddress",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 90.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "234, Purbanchal School Rd\nKolkata- 70084",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30.0, left: 100),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Status",
                                            style: fontStyle(
                                              fontWeight: bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 90.0,
                                            ),
                                            child: Text(
                                              "Delivered",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Active    ",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 60.0,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 20.0,
                                                ),
                                                child: isActive.value
                                                    ? Text(
                                                        "Yes",
                                                        style: fontStyle(
                                                          color: Colors.green,
                                                        ),
                                                      )
                                                    : Text(
                                                        "No",
                                                        style: fontStyle(
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Method    ",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 75.0,
                                              ),
                                              child: Text(
                                                "Cash",
                                                style: fontStyle(
                                                  color: HexColor("555454"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Payment\nStatus",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 80.0,
                                              ),
                                              child: Text(
                                                "Delivered",
                                                style: fontStyle(
                                                  color: HexColor("555454"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                              "Date-of-Delivery",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 30.0,
                                              top: 15,
                                            ),
                                            child: Text(
                                              "12-8-20",
                                              style: fontStyle(
                                                color: HexColor("555454"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Driver",
                                              style: fontStyle(
                                                fontWeight: bold,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 100.0,
                                              ),
                                              child: Text(
                                                "Swayam",
                                                style: fontStyle(
                                                  color: HexColor("555454"),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
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
