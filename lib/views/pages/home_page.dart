import 'package:flutter/material.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/drawer/App%20Management/order.dart';
import 'package:vendor_admin/views/drawer/App%20Management/products.dart';
import 'package:vendor_admin/views/drawer/web_drawer.dart';
import 'package:vendor_admin/views/drawer/dashboard.dart';
import 'package:get/get.dart';

import '../../constants/size.dart';
import '../../controller/page_controller.dart';
import '../drawer/App Management/categories.dart';
import '../drawer/App Management/coupons.dart';
import '../drawer/App Management/customers.dart';
import '../drawer/App Management/delivery.dart';
import '../drawer/App Management/global_income.dart';
import '../drawer/Settings/banner.dart';
import '../drawer/Settings/notification.dart';
import '../drawer/Settings/payment.dart';
import '../drawer/Settings/support.dart';
import '../drawer/favourites.dart';
import '../drawer/App Management/vendors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var pageIndexController = Get.put(PageIndexController());

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Dashboard(),
      Favourites(),
      Customers(),
      Vendors(),
      Categories(),
      Products(),
      Order(),
      Coupons(),
      Delivery(),
      GlobalIncome(),
      Banners(),
      Payment(),
      Support(),
      Notifications(),
    ];
    return Scaffold(
        body: SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: WebDrawer(
              pageController: pageIndexController,
            ),
          ),
          Expanded(
            flex: 8,
            child: Obx(() => pages[pageIndexController.index.value]),
          ),
        ],
      ),
    ));
  }
}
