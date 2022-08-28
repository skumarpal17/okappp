import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constant/color.dart';

class Searchvehicle extends StatefulWidget {
  const Searchvehicle({Key? key}) : super(key: key);

  @override
  State<Searchvehicle> createState() => _SearchvehicleState();
}

class _SearchvehicleState extends State<Searchvehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF666687),
                          )),
                    ),
                    SizedBox(
                      width: Get.width * 0.19,
                    ),
                    Container(
                      height: 6,
                      width: 62, //Get.width * 0.29,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        children: [
                          Container(
                            width: 30, //Get.width * 0.15,
                            decoration: BoxDecoration(
                                color: psaff,
                                borderRadius: BorderRadius.circular(16)),
                            child: Text(""),
                          ),
                        ],
                      ),
                    ),
                    Text(""),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                Text(
                  "Enter vehicle Number",
                  style: TextStyle(
                      fontFamily: 'DM sans medium',
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Enter the Vehicle Number\nyou wish to report an event for.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: ptext, letterSpacing: 1),
                  ),
                ),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildOTPFIELD(context),
                      buildOTPFIELD(context),
                      buildOTPFIELD(context),
                      buildOTPFIELD(context),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.32,
                ),
                Container(
                  height: Get.height * 0.058,
                  decoration: BoxDecoration(),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Next"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(psaff),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )))),
                ),
                SizedBox(
                  height: Get.height * 0.15,
                ),
                Text(
                  "By continuing I agree to the Terms of use &\nPrivacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'DM sans medium', color: ptext),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildOTPFIELD(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 64,
      child: TextFormField(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
        onChanged: (value) {
          if (value.length == 2) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(2),
        ],
      ),
    );
  }
}
