import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vendor_admin/views/widgets/bottom_bar.dart';
import 'package:vendor_admin/views/widgets/custom_tile.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../constants/theme.dart';

class Dashboard extends StatelessWidget {
  var pageController;
  Dashboard({super.key, this.pageController});
  final List<Map<String, dynamic>> listOfColumns = [
    {
      "Image": "assets/vegetable_round.png",
      "Shop": "Tripathi Store",
      "Address": "234, Purbanchal School Road\nKolkata- 700084",
      "Action": const Icon(Icons.edit),
    },
    {
      "Image": "assets/vegetable_round.png",
      "Shop": "Tripathi Store",
      "Address": "234, Purbanchal School Road\nKolkata- 700084",
      "Action": const Icon(Icons.edit),
    },
    {
      "Image": "assets/vegetable_round.png",
      "Shop": "Tripathi Store",
      "Address": "234, Purbanchal School Road Kolkata- 700084",
      "Action": const Icon(Icons.edit),
    },
    {
      "Image": "assets/vegetable_round.png",
      "Shop": "Tripathi Store",
      "Address": "234, Purbanchal School Road Kolkata- 700084",
      "Action": const Icon(Icons.edit),
    },
    {
      "Image": "assets/vegetable_round.png",
      "Shop": "Tripathi Store",
      "Address": "234, Purbanchal School Road Kolkata- 700084",
      "Action": const Icon(Icons.edit),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 60.0, top: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Dashboard",
                  style: fontStyle(
                    color: HexColor("555454"),
                    size: 25,
                    fontWeight: bold,
                  ),
                ),
              ),
              SizedBox(
                width: w * 0.8,
                height: 241,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 4,
                  children: <Widget>[
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/red_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 6;
                        },
                        subtitle: "Total Orders",
                        title: "200",
                        footerColor: HexColor("F32D2D"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/earning_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 9;
                        },
                        subtitle: "Total Earning",
                        title: "Rs 1500",
                        footerColor: HexColor("4687FF"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/green_earning_custom_tile.png",
                        onTap: null,
                        subtitle: "Today's Earning",
                        title: "Rs 1000",
                        footerColor: HexColor("4CAF50"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/riders_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 8;
                        },
                        subtitle: "Total Riders",
                        title: "200",
                        footerColor: HexColor("FF8B36"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: w * 0.8,
                height: 250,
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 4,
                  children: <Widget>[
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/customer_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 2;
                        },
                        subtitle: "Total Customers",
                        title: "200",
                        footerColor: HexColor("FF8B36"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/category_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 4;
                        },
                        subtitle: "Total Categories",
                        title: "15",
                        footerColor: HexColor("F32D2D"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/products_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 5;
                        },
                        subtitle: "Total Products",
                        title: "200",
                        footerColor: HexColor("4687FF"),
                      ),
                    ),
                    SizedBox(
                      height: customTileHeight,
                      width: customTileWidth,
                      child: CustomTile(
                        imagePath: "assets/vendors_custom_tile.png",
                        onTap: () {
                          pageController.index.value = 3;
                        },
                        subtitle: "Total Vendors",
                        title: "200",
                        footerColor: HexColor("4CAF50"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: page,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Material(
                        elevation: 10,
                        child: SizedBox(
                          height: h * 0.6,
                          width: page * 0.4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(space),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Earnings',
                                      style: fontStyle(
                                        color: black,
                                        fontWeight: bold,
                                        size: 23,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "All Payments",
                                        style: fontStyle(
                                            color: accentColor, size: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: space, top: space),
                                child: Text("Rs 1500",
                                    style: fontStyle(color: black, size: 28)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: space),
                                child: Text(
                                  "Earning over time",
                                  style: fontStyle(color: black, size: 18),
                                ),
                              ),
                              const Center(child: Text("Graph here"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, bottom: 40),
                      child: Container(
                          width: w * 0.4,
                          height: h * 0.6,
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
                                  MaterialStateProperty.all<Color>(accentColor),
                              columns: const [
                                DataColumn(label: Text('Image')),
                                DataColumn(label: Text('Shop')),
                                DataColumn(label: Text('Address')),
                                DataColumn(label: Text('Action')),
                              ],
                              rows: listOfColumns.asMap().entries.map(
                                ((entry) {
                                  int idx = entry.key;

                                  return DataRow(
                                    color: idx % 2 == 0
                                        ? MaterialStateProperty.all<Color>(
                                            HexColor("D6D4D4"))
                                        : MaterialStateProperty.all<Color>(
                                            white),
                                    cells: <DataCell>[
                                      DataCell(
                                        Image.asset(entry.value["Image"],
                                            height: 45),
                                      ), //Extracting from Map element the value
                                      DataCell(Text(entry.value["Shop"])),
                                      DataCell(Text(entry.value["Address"])),
                                      DataCell(entry.value["Action"]),
                                    ],
                                  );
                                }),
                              ).toList(),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const BottomBar(),
            ],
          ),
        ),
      )),
    );
  }
}
