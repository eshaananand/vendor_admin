import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_admin/test.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Categories/edit_categories.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Coupons/create_coupons.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Orders/edit_orders.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Orders/order_details.dart';
import 'package:vendor_admin/views/drawer/Settings/Banner/banner_edit.dart';
import 'package:vendor_admin/views/pages/home_page.dart';
import 'package:vendor_admin/views/pages/login_page.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      theme: lightTheme,
      // home: HomePage(),
      home: LoginPage(),
    );
  }
}
