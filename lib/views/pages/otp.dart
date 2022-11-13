import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_admin/views/pages/home_page.dart';
import 'package:vendor_admin/views/pages/login_page.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../constants/theme.dart';
import '../widgets/custom_form_field.dart';

class Otp extends StatelessWidget {
  Otp({super.key});

  TextEditingController otpControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 10,
          child: SizedBox(
              height: h / 2.5,
              width: w / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("Verify Otp",
                        style: fontStyle(
                          color: accentColor,
                          fontWeight: bold,
                          size: 40,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 160),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Text(
                            "Otp  ",
                            style: fontStyle(
                              color: black,
                              fontWeight: bold,
                              size: 14,
                            ),
                          ),
                        ),
                        CustomFormField(
                          width: w / 4,
                          controller: otpControl,
                          subtitle: "",
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(LoginPage());
                          },
                          child: Text("Change number",
                              style: fontStyle(
                                size: 16,
                                fontWeight: bold,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(HomePage());
                          },
                          child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: accentColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Verify",
                                  style: fontStyle(
                                    color: white,
                                    fontWeight: bold,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
