import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({Key? key}) : super(key: key);

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  double _sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                    Text(
                      "Scan QR Code",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 34,
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                Text(
                  "Kindly insure there is sufficient light for a bettet\nscanning experience",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'DM sans medium', color: ptext),
                ),
                SizedBox(
                  height: Get.height * 0.040,
                ),
                SizedBox(
                  height: Get.width * 0.75,
                  width: Get.width * 0.75,
                  child: Container(
                    color: Colors.red,
                    child: Text(""),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.040,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (_sliderValue >= 0) {
                            setState(() {
                              _sliderValue = _sliderValue - 10;
                            });
                          }
                        },
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 30, color: ptext),
                        )),
                    Container(
                      width: Get.width * 0.6,
                      child: Slider(
                        value: _sliderValue,
                        min: 0,
                        max: 100,
                        label: _sliderValue.round().toString(),
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          if (_sliderValue <= 100) {
                            setState(() {
                              _sliderValue = _sliderValue + 10;
                            });
                          }
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 30, color: ptext),
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.180,
                ),
                Text(
                  "Will scan only a valid code issued by oyekidher",
                  style: TextStyle(fontFamily: 'DM sans medium', color: ptext),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
