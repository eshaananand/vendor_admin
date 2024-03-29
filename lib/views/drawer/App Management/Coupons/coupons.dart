import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/widgets/custom_alert_box.dart';

import '../../../../../constants/size.dart';
import '../../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';

class Coupons extends StatelessWidget {
  var pageController;
  Coupons({super.key, this.pageController});

  List<String> list = <String>['10', '20', '30', '40', '50'];
  var selected = 0.obs;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> listOfColumns = [
      {
        "CODE": "CORONA6",
        "DISCOUNT": "NOT A VIRUS",
        "DISCRIPTION": "123456789",
        "EXPIRES": "1 year ago",
        "ENABLED": "NO",
        "UPDATED-AT": "1 years ago",
        "ACTION": Row(
          children: [
            Center(
              child: IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () {},
              ),
            ),
            Center(
              child: IconButton(
                icon: Icon(Icons.delete, color: accentColor),
                onPressed: () {
                  CustomAlertBox.dialogBox(
                    onCancelTap: () {},
                    onYesTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      },
    ];
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
                  "Coupons",
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
                    child: Obx(
                      () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        selected.value = 0;
                                      },
                                      child: Material(
                                        elevation: 5,
                                        child: Container(
                                          height: 30,
                                          width: 160,
                                          decoration: BoxDecoration(
                                            color: selected.value == 0
                                                ? accentColor
                                                : HexColor("555454"),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.list, color: white),
                                              Text(
                                                "  Coupon List",
                                                style: fontStyle(color: white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: padding(left: 10),
                                      child: InkWell(
                                        onTap: () {
                                          pageController.index.value = 35;
                                        },
                                        child: Container(
                                            height: 30,
                                            width: 160,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.add_circle_outlined,
                                                  color: HexColor("555454"),
                                                ),
                                                Text(
                                                  " Create Coupon",
                                                  style: fontStyle(
                                                      color:
                                                          HexColor("555454")),
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 15.0),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              items: list.map<
                                                      DropdownMenuItem<String>>(
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
                                          style:
                                              const TextStyle(fontSize: 15.0),

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
                          // Row(
                          //   children: [
                          //     Center(
                          //       child: IconButton(
                          //         icon: const Icon(Icons.edit,
                          //             color: Colors.blue),
                          //         onPressed: () {},
                          //       ),
                          //     ),
                          //     Center(
                          //       child: IconButton(
                          //         icon: Icon(Icons.delete, color: accentColor),
                          //         onPressed: () {
                          //           CustomAlertBox.dialogBox(
                          //             onCancelTap: () {},
                          //             onYesTap: () {},
                          //           );
                          //         },
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: SingleChildScrollView(
                              child: Container(
                                  width: w * 0.8,
                                  height: h * 0.7,
                                  color: Colors.white,
                                  child: SingleChildScrollView(
                                    child: DataTable(
                                      dataRowHeight: 80,
                                      // dividerThickness: null,
                                      dividerThickness: 0,
                                      dataTextStyle: fontStyle(),

                                      headingTextStyle: fontStyle(
                                        color: white,
                                        fontWeight: bold,
                                        size: 15,
                                      ),

                                      headingRowColor:
                                          MaterialStateProperty.all<Color>(
                                              accentColor),
                                      columns: const [
                                        DataColumn(label: Text('CODE')),
                                        DataColumn(label: Text('DISCOUNT')),
                                        DataColumn(label: Text('DESCRIPTION')),
                                        DataColumn(label: Text('EXPIRES AT')),
                                        DataColumn(label: Text('ENABLED')),
                                        DataColumn(label: Text('UPDATED  AT')),
                                        DataColumn(label: Text('ACTION')),
                                      ],
                                      rows: listOfColumns.asMap().entries.map(
                                        ((entry) {
                                          return DataRow(
                                            cells: <DataCell>[
                                              DataCell(
                                                  Text(entry.value["CODE"])),
                                              DataCell(Text(
                                                  entry.value["DISCOUNT"])),
                                              DataCell(Text(
                                                  entry.value["DISCRIPTION"])),
                                              DataCell(
                                                  Text(entry.value["EXPIRES"])),
                                              DataCell(Text(
                                                entry.value["ENABLED"],
                                                style: fontStyle(
                                                  color:
                                                      entry.value["ENABLED"] ==
                                                              "Yes"
                                                          ? Colors.green
                                                          : accentColor,
                                                ),
                                              )),
                                              DataCell(Text(
                                                  entry.value["UPDATED-AT"])),
                                              DataCell(entry.value["ACTION"]),
                                            ],
                                          );
                                        }),
                                      ).toList(),
                                    ),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Showing 1 to 10 out of 20 entries",
                                  style: fontStyle(
                                    fontWeight: FontWeight.w500,
                                    size: 12,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Card(
                                      elevation: 5,
                                      color: HexColor("D6D4D4"),
                                      child: SizedBox(
                                          height: 20,
                                          width: 70,
                                          child: Center(
                                            child: Text(
                                              "Previous",
                                              style: fontStyle(
                                                color: white,
                                                size: 13,
                                              ),
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: fontStyle(
                                              color: white, fontWeight: bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: HexColor("D6D4D4"),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: fontStyle(
                                              color: white, fontWeight: bold),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      color: accentColor,
                                      child: SizedBox(
                                          height: 20,
                                          width: 70,
                                          child: Center(
                                            child: Text(
                                              "Next",
                                              style: fontStyle(
                                                color: white,
                                                size: 13,
                                              ),
                                            ),
                                          )),
                                    ),
                                  ],
                                )
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
    );
  }
}
