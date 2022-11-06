import 'package:flutter/material.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/edit_vendor.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_details.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_galleries.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_payment.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_refer.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_reviews.dart';
import 'package:vendor_admin/views/drawer/App%20Management/order.dart';
import 'package:vendor_admin/views/drawer/App%20Management/products.dart';
import 'package:vendor_admin/views/drawer/web_drawer.dart';
import 'package:vendor_admin/views/drawer/dashboard.dart';
import 'package:get/get.dart';

import '../../constants/size.dart';
import '../../controller/page_controller.dart';
import '../drawer/App Management/Categories/categories.dart';
import '../drawer/App Management/Customer/customer_details.dart';
import '../drawer/App Management/Customer/customer_payment_history.dart';
import '../drawer/App Management/Customer/customer_refer.dart';
import '../drawer/App Management/Vendor/new_vendors.dart';
import '../drawer/App Management/coupons.dart';
import '../drawer/App Management/Customer/customers.dart';
import '../drawer/App Management/delivery.dart';
import '../drawer/App Management/global_income.dart';
import '../drawer/Settings/Banner/banner.dart';
import '../drawer/Settings/notification.dart';
import '../drawer/Settings/payment.dart';
import '../drawer/Settings/support.dart';
import '../drawer/favourites.dart';
import '../drawer/App Management/Vendor/vendors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var pageIndexController = Get.put(PageIndexController());

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Dashboard(),
      Favourites(),
      Customers(
        pageController: pageIndexController,
      ),
      Vendors(
        pageController: pageIndexController,
      ),
      Categories(
        pageController: pageIndexController,
      ),
      Products(
        pageController: pageIndexController,
      ),
      Order(
        pageController: pageIndexController,
      ),
      Coupons(
        pageController: pageIndexController,
      ),
      Delivery(
        pageController: pageIndexController,
      ),
      GlobalIncome(
        pageController: pageIndexController,
      ),
      Banners(
        pageController: pageIndexController,
      ),
      Payment(
        pageController: pageIndexController,
      ),
      Support(
        pageController: pageIndexController,
      ),
      Notifications(
        pageController: pageIndexController,
      ),
      CustomerDetails(),
      CustomerPaymentHistory(),
      CustomerRefer(),
      NewVendor(),
      VendorDetails(
        pageController: pageIndexController,
      ),
      VendorGalleries(
        pageController: pageIndexController,
      ),
      VendorReviews(),
      VendorPaymentHistory(),
      VendorRefer(),
      EditVendorDetails(
        pageController: pageIndexController,
      ),
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
          )
        ],
      ),
    ));
  }
}
