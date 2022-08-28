import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constant/color.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                      width: 32, //Get.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: Text(""),
                    ),
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
                "Verify your number",
                style: TextStyle(
                    fontFamily: 'DM sans medium',
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 23),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Enter the code that we just sent at 4 digit code\nto your mobile number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DM sans',
                    color: ptext,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "Didn't receive a code?",
                      style: TextStyle(fontFamily: 'DM sans', color: ptext),
                    ),
                    TextButton(
                      child: Text(
                        " Resend Code",
                        style: TextStyle(color: psaff),
                      ),
                      onPressed: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Container(
                height: Get.height * 0.058,
                decoration: BoxDecoration(),
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Verify"),
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
                style: TextStyle(fontFamily: 'DM sans', color: ptext),
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
