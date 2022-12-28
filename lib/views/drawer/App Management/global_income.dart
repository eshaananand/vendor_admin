import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/widgets/custom_alert_box.dart';

import '../../../constants/size.dart';
import '../../../constants/theme.dart';
import '../../widgets/bottom_bar.dart';

class GlobalIncome extends StatelessWidget {
  var pageController;
  GlobalIncome({super.key, this.pageController});

  List<String> list = <String>['10', '20', '30', '40', '50'];
  var isApplied = false.obs;

  final List<Map<String, dynamic>> listOfColumns = [
    {
      "DATE": "06/11/2022",
      "TOTAL": "200",
      "PERCENT": "10",
      "PAYMENT": "APPLY",
      "ACTION": Row(
        children: [
          Center(
            child: IconButton(
              icon: const Icon(Icons.remove_red_eye, color: Colors.blue),
              onPressed: () {},
            ),
          ),
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
                  "Global Income",
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
                                    width: 120,
                                    decoration:
                                        BoxDecoration(color: accentColor),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.list, color: white),
                                        Text(
                                          "  Global List",
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
                                      DataColumn(label: Text('DATE')),
                                      DataColumn(label: Text('TOTAL\nINCOME')),
                                      DataColumn(
                                          label: Text('GLOBAL\nPERCENT')),
                                      DataColumn(
                                          label: Text('PAYMENT\nSTATUS')),
                                      DataColumn(label: Text('ACTION')),
                                    ],
                                    rows: listOfColumns.asMap().entries.map(
                                      ((entry) {
                                        entry.value["PAYMENT"] == "APPLY"
                                            ? isApplied.value = false
                                            : isApplied.value = true;

                                        return DataRow(
                                          cells: <DataCell>[
                                            DataCell(Text(entry.value["DATE"])),
                                            DataCell(Text(
                                              entry.value["TOTAL"],
                                            )),
                                            DataCell(Text(
                                                entry.value["PERCENT"] + "%")),
                                            DataCell(
                                              Obx(
                                                () => InkWell(
                                                  onTap: () {
                                                    if (isApplied.value ==
                                                        false) {
                                                      entry.value["PAYMENT"] =
                                                          "APPLIED";
                                                      isApplied.value = true;
                                                    } else {
                                                      null;
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 30,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: isApplied.value
                                                            ? Colors.grey
                                                            : Colors.green),
                                                    child: Center(
                                                      child: Text(
                                                        entry.value["PAYMENT"],
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
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
                        // Row(
                        //   children: [
                        //     Center(
                        //       child: IconButton(
                        //         icon: const Icon(Icons.remove_red_eye,
                        //             color: Colors.blue),
                        //         onPressed: () {},
                        //       ),
                        //     ),
                        //     Center(
                        //       child: IconButton(
                        //         icon:
                        //             const Icon(Icons.edit, color: Colors.blue),
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
