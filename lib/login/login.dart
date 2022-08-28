import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:okappp/login/verify.dart';

import '../constant/color.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            children: [
              Spacer(
                flex: 1,
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
              Spacer(
                flex: 1,
              ),
              Text(
                "Let's Get Started",
                style: TextStyle(
                    fontFamily: 'DM sans medium',
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "We will send an OTP to your mobile number",
                  style: TextStyle(
                      fontFamily: 'DM sans ', color: ptext, letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Spacer(
                flex: 5,
              ),
              Container(
                height: Get.height * 0.058,
                decoration: BoxDecoration(),
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(Verify());
                    },
                    child: Text("Continue"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(psaff),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )))),
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                "By Contuing, I agree to the Terms of Use &\nPrivacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ptext,
                  fontFamily: 'DM sans',
                ),
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
