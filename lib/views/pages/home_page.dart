import 'package:flutter/material.dart';
import 'package:vendor_admin/constants/colors.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Coupons/create_coupons.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Delivery/delivery_details.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Products/product_details.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/edit_vendor.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_details.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_galleries.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_payment.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_refer.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Vendor/vendor_reviews.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Orders/order.dart';
import 'package:vendor_admin/views/drawer/App%20Management/Products/products.dart';
import 'package:vendor_admin/views/drawer/web_drawer.dart';
import 'package:vendor_admin/views/drawer/dashboard.dart';
import 'package:get/get.dart';

import '../../constants/size.dart';
import '../../controller/page_controller.dart';
import '../drawer/App Management/Categories/categories.dart';
import '../drawer/App Management/Categories/edit_categories.dart';
import '../drawer/App Management/Categories/edit_subcategory.dart';
import '../drawer/App Management/Customer/customer_details.dart';
import '../drawer/App Management/Customer/customer_info.dart';
import '../drawer/App Management/Customer/customer_payment_history.dart';
import '../drawer/App Management/Customer/customer_refer.dart';
import '../drawer/App Management/Delivery/delivery_payment.dart';
import '../drawer/App Management/Delivery/delivery_refer.dart';
import '../drawer/App Management/Delivery/new_delivery.dart';
import '../drawer/App Management/Delivery/rider_details.dart';
import '../drawer/App Management/Delivery/rider_info.dart';
import '../drawer/App Management/Orders/edit_orders.dart';
import '../drawer/App Management/Orders/order_details.dart';
import '../drawer/App Management/Products/edit_product_details.dart';
import '../drawer/App Management/Products/edit_product_list.dart';
import '../drawer/App Management/Products/new_product.dart';
import '../drawer/App Management/Products/product_list.dart';
import '../drawer/App Management/Vendor/edit_vendor_galleries.dart';
import '../drawer/App Management/Vendor/edit_vendor_reviews.dart';
import '../drawer/App Management/Vendor/new_vendors.dart';
import '../drawer/App Management/Coupons/coupons.dart';
import '../drawer/App Management/Customer/customers.dart';
import '../drawer/App Management/Delivery/delivery.dart';
import '../drawer/App Management/Vendor/vendor_info.dart';
import '../drawer/App Management/global_income.dart';
import '../drawer/Settings/Banner/banner.dart';
import '../drawer/Settings/Banner/banner_edit.dart';
import '../drawer/Settings/Payment/customer_payment.dart';
import '../drawer/Settings/Payment/vendor_payment.dart';
import '../drawer/Settings/notification.dart';
import '../drawer/Settings/Payment/payment.dart';
import '../drawer/Settings/support.dart';
import '../drawer/favourites.dart';
import '../drawer/App Management/Vendor/vendors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var pageIndexController = Get.put(PageIndexController());

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Dashboard(
        pageController: pageIndexController,
      ), //1
      Favourites(), //2
      Customers(
        //3
        pageController: pageIndexController,
      ),
      Vendors(
        //4
        pageController: pageIndexController,
      ),
      Categories(
        //5
        pageController: pageIndexController,
      ),
      Products(
        //6
        pageController: pageIndexController,
      ),
      Order(
        //7
        pageController: pageIndexController,
      ),
      Coupons(
        //8
        pageController: pageIndexController,
      ),
      Delivery(
        //9
        pageController: pageIndexController,
      ),
      GlobalIncome(
        //10
        pageController: pageIndexController,
      ),
      Banners(
        //11
        pageController: pageIndexController,
      ),
      Payment(
        //12
        pageController: pageIndexController,
      ),
      Support(
        //13
        pageController: pageIndexController,
      ),
      Notifications(
        //14
        pageController: pageIndexController,
      ),
      CustomerDetails(
        pageController: pageIndexController,
      ), //15
      CustomerPaymentHistory(), //6
      CustomerRefer(), //17
      NewVendor(), //18
      VendorDetails(
        //19
        pageController: pageIndexController,
      ),
      VendorGalleries(
        //20
        pageController: pageIndexController,
      ),
      VendorReviews(
        pageController: pageIndexController,
      ), //21
      VendorPaymentHistory(), //22
      VendorRefer(), //23
      EditVendorDetails(
        //24
        pageController: pageIndexController,
      ),
      EditVendorGalleries(
        //25
        pageController: pageIndexController,
      ),
      EditVendorReviews(
        //26
        pageController: pageIndexController,
      ),
      EditCategories(
        //27
        pageController: pageIndexController,
      ),
      EditSubcategories(
        //28
        pageController: pageIndexController,
      ),
      NewProduct(
        //29
        pageController: pageIndexController,
      ),
      ProductList(
        //30
        pageController: pageIndexController,
      ),
      EditNewProduct(
        //31
        pageController: pageIndexController,
      ),
      ProductDetails(
        //32
        pageController: pageIndexController,
      ),
      EditProductDetails(
        //33
        pageController: pageIndexController,
      ),
      OrderDetails(
        //34
        pageController: pageIndexController,
      ),
      EditOrders(
        //35
        pageController: pageIndexController,
      ),
      CreateCoupons(
        //36
        pageController: pageIndexController,
      ),
      NewDelivery(
        //37
        pageController: pageIndexController,
      ),
      DeliveryDetails(
        //38
        pageController: pageIndexController,
      ),
      DeliveryPayment(
        //39
        pageController: pageIndexController,
      ),
      DeliveryRefer(
        //40
        pageController: pageIndexController,
      ),
      BannerEdit(), //41
      CustomerPayment(), //42
      VendorPayment(), //43
      DeliveryPayment(), //44
      RiderDetails(
        pageController: pageIndexController,
      ), //45
      CustomerInfo(), //46
      VendorInfo(), //47
      RiderInfo() //48
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
