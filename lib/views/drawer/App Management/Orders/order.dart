import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/widgets/custom_alert_box.dart';

import '../../../../../constants/size.dart';
import '../../../../../constants/theme.dart';
import '../../../widgets/bottom_bar.dart';

class Order extends StatelessWidget {
  var pageController;
  Order({super.key, this.pageController});

  List<String> list = <String>['10', '20', '30', '40', '50'];
  var selected = 0.obs;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orderDetails = [
      {
        "ID": "#1",
        "CLIENTS": "DEMO",
        "ORDER-STATUS": "READY",
        "AMOUNT": "\$20",
        "PAYMENT-STATUS": "Paid",
        "METHOD": "shOP X",
        "ACTION": Row(
          children: [
            Center(
              child: IconButton(
                icon: const Icon(Icons.remove_red_eye, color: Colors.blue),
                onPressed: () {
                  pageController.index.value = 33;
                },
              ),
            ),
            Center(
              child: IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () {
                  pageController.index.value = 34;
                },
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

    final List<Map<String, dynamic>> orderStatus = [
      {
        "STATUS": "#1",
        "UPDATED-AT": "DEMO",
        "ACTION": Center(
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
      },
      {
        "STATUS": "#1",
        "UPDATED-AT": "DEMO",
        "ACTION": Center(
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
                  "Orders Management",
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
                                                  : HexColor("555454")),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.list, color: white),
                                              Text(
                                                "  Orders Detail List",
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
                                          selected.value = 1;
                                        },
                                        child: Material(
                                          elevation: 5,
                                          child: Container(
                                              height: 30,
                                              width: 160,
                                              decoration: BoxDecoration(
                                                  color: selected.value == 1
                                                      ? accentColor
                                                      : HexColor("555454")),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.list,
                                                      color: white),
                                                  Text(
                                                    "  Orders Status List",
                                                    style:
                                                        fontStyle(color: white),
                                                  ),
                                                ],
                                              )),
                                        ),
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
                          //         icon: const Icon(Icons.remove_red_eye,
                          //             color: Colors.blue),
                          //         onPressed: () {
                          //           pageController.index.value = 33;
                          //         },
                          //       ),
                          //     ),
                          //     Center(
                          //       child: IconButton(
                          //         icon: const Icon(Icons.edit,
                          //             color: Colors.blue),
                          //         onPressed: () {
                          //           pageController.index.value = 34;
                          //         },
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
                          selected.value == 0
                              ? Padding(
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
                                                MaterialStateProperty.all<
                                                    Color>(accentColor),

                                            columns: const [
                                              DataColumn(
                                                  label: Text('ORDER ID')),
                                              DataColumn(
                                                  label: Text('CLIENTS')),
                                              DataColumn(
                                                  label: Text('ORDER\nSTATUS')),
                                              DataColumn(label: Text('AMOUNT')),
                                              DataColumn(
                                                  label:
                                                      Text('PAYMENT\nSTATUS')),
                                              DataColumn(label: Text('METHOD')),
                                              DataColumn(label: Text('ACTION')),
                                            ],
                                            rows: orderDetails
                                                .asMap()
                                                .entries
                                                .map(
                                              ((entry) {
                                                return DataRow(
                                                  cells: <DataCell>[
                                                    DataCell(Text(
                                                        entry.value["ID"])),
                                                    DataCell(Text(entry
                                                        .value["CLIENTS"])),
                                                    DataCell(Text(entry.value[
                                                        "ORDER-STATUS"])),
                                                    DataCell(Text(
                                                        entry.value["AMOUNT"])),
                                                    DataCell(Text(entry.value[
                                                        "PAYMENT-STATUS"])),
                                                    DataCell(Text(
                                                        entry.value["METHOD"])),
                                                    DataCell(
                                                        entry.value["ACTION"]),
                                                  ],
                                                );
                                              }),
                                            ).toList(),
                                          ),
                                        )),
                                  ),
                                )
                              : Padding(
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
                                                MaterialStateProperty.all<
                                                    Color>(accentColor),

                                            columns: const [
                                              DataColumn(label: Text('STATUS')),
                                              DataColumn(
                                                  label: Center(
                                                      child:
                                                          Text('UPDATED AT'))),
                                              DataColumn(
                                                  label: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 150),
                                                      child: Text(
                                                        'ACTION',
                                                      ))),
                                            ],
                                            rows:
                                                orderStatus.asMap().entries.map(
                                              ((entry) {
                                                return DataRow(
                                                  cells: <DataCell>[
                                                    DataCell(Text(
                                                        entry.value["STATUS"])),
                                                    DataCell(Text(entry
                                                        .value["UPDATED-AT"])),
                                                    DataCell(
                                                        entry.value["ACTION"]),
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
                                        ),
                                      ),
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
