import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_admin/views/pages/otp.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../constants/theme.dart';
import '../widgets/custom_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController phoneControl = TextEditingController();
  RxBool isNumber10Digit = false.obs;
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
                    child: Text("Login",
                        style: fontStyle(
                          color: accentColor,
                          fontWeight: bold,
                          size: 40,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 120),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Text(
                            "Phone number  ",
                            style: fontStyle(
                              color: black,
                              fontWeight: bold,
                              size: 14,
                            ),
                          ),
                        ),
                        CustomFormField(
                          width: w / 4,
                          controller: phoneControl,
                          subtitle: "",
                          onChanged: (value) {
                            if (value.length != 10) {
                              isNumber10Digit.value = false;
                            } else {
                              isNumber10Digit.value = true;
                            }
                          },
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Forgot number?",
                            style: fontStyle(
                              size: 16,
                              fontWeight: bold,
                            )),
                        Obx(
                          () => InkWell(
                            onTap: isNumber10Digit.value
                                ? () {
                                    Get.to(Otp());
                                  }
                                : null,
                            child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: isNumber10Digit.value
                                        ? accentColor
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Get OTP",
                                    style: fontStyle(
                                      color: white,
                                      fontWeight: bold,
                                    ),
                                  ),
                                )),
                          ),
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
