import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/widgets/custom_alert_box.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';

class VendorPayment extends StatelessWidget {
  VendorPayment({super.key});

  List<String> list = <String>['10', '20', '30', '40', '50'];

  @override
  Widget build(BuildContext context) {
    var dropdownValue = list.first.obs;
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
                  "Payment History | Vendor",
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                        Icon(Icons.list, color: white),
                                        Text(
                                          " Vendor",
                                          style: fontStyle(color: white),
                                        ),
                                      ],
                                    )),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.content_paste_go_sharp,
                                            color: accentColor),
                                        Text(
                                          " Export",
                                          style: fontStyle(
                                              color: accentColor, size: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.print, color: accentColor),
                                      Text(
                                        " Print",
                                        style: fontStyle(
                                            color: accentColor, size: 15),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            height: kToolbarHeight,
                            color: HexColor("D9D9D9").withOpacity(0.37),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Row(
                                    children: [
                                      const Text("Show  "),
                                      Obx(
                                        () => Container(
                                          color: white,
                                          height: 30,
                                          child: DropdownButton<String>(
                                            value: dropdownValue.value,
                                            icon: const Icon(
                                                Icons.arrow_drop_down),
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                            onChanged: (String? value) {
                                              dropdownValue.value = value!;
                                            },
                                            underline: const SizedBox(
                                              height: 0,
                                              width: 0,
                                            ),
                                            items: list
                                                .map<DropdownMenuItem<String>>(
                                                    (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ),
                                      const Text("  Entries  "),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SizedBox(
                                    height: 37,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextFormField(
                                        // controller: searchController,
                                        style: const TextStyle(fontSize: 15.0),

                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.only(top: 7.0),
                                          hintText: "Search",
                                          border: InputBorder.none,
                                          // labelText: "Search",
                                          // hintText: "Search",
                                          // suffixText: "Search",
                                          fillColor: HexColor("D9D9D9"),
                                          filled: true,
                                          prefixIcon: IconButton(
                                            icon: const Icon(
                                              Icons.search,
                                              size: 20,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Center(
                            child: IconButton(
                          icon: Icon(Icons.delete, color: accentColor),
                          onPressed: () {
                            CustomAlertBox.dialogBox(
                              onCancelTap: () {},
                              onYesTap: () {},
                            );
                          },
                        ))
                      ],
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