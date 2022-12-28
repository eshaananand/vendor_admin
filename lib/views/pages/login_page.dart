import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor_admin/views/pages/otp.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../../constants/theme.dart';
import '../widgets/custom_form_field.dart';
import 'home_page.dart';

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
                height: h * 0.5,
                width: w * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text("ADMIN LOGIN",
                          style: fontStyle(
                              color: accentColor, size: 25, fontWeight: bold)),
                    ),
                    // TextFormField(
                    //   decoration: const InputDecoration(

                    //     hintText: 'What do people call you?',
                    //     labelText: 'Name *',
                    //   ),
                    //   onSaved: (String? value) {
                    //     // This optional block of code can be used to run
                    //     // code when the user saves the form.
                    //   },
                    //   validator: (String? value) {
                    //     return (value != null && value.contains('@'))
                    //         ? 'Do not use the @ char.'
                    //         : null;
                    //   },
                    // )
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 30, 40, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 224, 223, 223),
                        ),
                        child: TextField(
                          autofocus: false,
                          // style: TextStyle(fontSize: 15.0, color: Colors.black),
                          onChanged: (value) {
                            if (value.length != 10) {
                              isNumber10Digit.value = false;
                            } else {
                              isNumber10Digit.value = true;
                            }
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone number',
                            suffixIcon: Icon(Icons.person),
                            contentPadding: EdgeInsets.all(20),
                            focusColor: Colors.red,

                            // fillColor: Color.fromARGB(255, 224, 223, 223),

                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.red),
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: Colors.grey, width: 0),
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            // border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 224, 223, 223),
                        ),
                        child: const TextField(
                          autofocus: false,
                          // style: TextStyle(fontSize: 15.0, color: Colors.black),

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'OTP',
                            suffixIcon: Icon(Icons.numbers),
                            contentPadding: EdgeInsets.all(20),
                            focusColor: Colors.red,

                            // fillColor: Color.fromARGB(255, 224, 223, 223),

                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: BorderSide(color: Colors.red),
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            // enabledBorder: OutlineInputBorder(
                            //   borderSide:
                            //       BorderSide(color: Colors.grey, width: 0),
                            //   borderRadius: BorderRadius.circular(10.0),
                            // ),
                            // border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                color: accentColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Login",
                                style: fontStyle(
                                  color: white,
                                  fontWeight: bold,
                                ),
                              ),
                            )),
                        Obx(
                          () => InkWell(
                            onTap: isNumber10Digit.value
                                ? () {
                                    Get.to(HomePage());
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
                  ],
                ))
            // child: SizedBox(
            //     height: h / 2.5,
            //     width: w / 2,
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 20.0),
            //           child: Text("Login",
            //               style: fontStyle(
            //                 color: accentColor,
            //                 fontWeight: bold,
            //                 size: 40,
            //               )),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 50.0, left: 120),
            //           child: Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 13.0),
            //                 child: Text(
            //                   "Phone number  ",
            //                   style: fontStyle(
            //                     color: black,
            //                     fontWeight: bold,
            //                     size: 14,
            //                   ),
            //                 ),
            //               ),
            //               CustomFormField(
            //                 width: w / 4,
            //                 controller: phoneControl,
            //                 borderRadius: 15,
            //                 subtitle: "",
            //                 onChanged: (value) {
            //                   if (value.length != 10) {
            //                     isNumber10Digit.value = false;
            //                   } else {
            //                     isNumber10Digit.value = true;
            //                   }
            //                 },
            //               )
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 100.0, vertical: 20),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               // Text("Forgot number?",
            //               //     style: fontStyle(
            //               //       size: 16,
            //               //       fontWeight: bold,
            //               //     )),
            //               // SizedBox(
            //               //   width: 10,
            //               // ),
            //               Obx(
            //                 () => InkWell(
            //                   onTap: isNumber10Digit.value
            //                       ? () {
            //                           Get.to(Otp());
            //                         }
            //                       : null,
            //                   child: Container(
            //                       height: 30,
            //                       width: 70,
            //                       decoration: BoxDecoration(
            //                           color: isNumber10Digit.value
            //                               ? accentColor
            //                               : Colors.grey,
            //                           borderRadius: BorderRadius.circular(10)),
            //                       child: Center(
            //                         child: Text(
            //                           "Get OTP",
            //                           style: fontStyle(
            //                             color: white,
            //                             fontWeight: bold,
            //                           ),
            //                         ),
            //                       )),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     )),
            ),
      ),
    );
  }
}
