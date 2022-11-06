import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_admin/test.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/edit_vendor.dart';
import 'package:vendor_admin/views/pages/home_page.dart';

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
      home: EditVendorDetails(),
    );
  }
}
