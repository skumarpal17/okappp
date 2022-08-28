import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class ScanQR2 extends StatefulWidget {
  const ScanQR2({Key? key}) : super(key: key);

  @override
  State<ScanQR2> createState() => _ScanQR2State();
}

class _ScanQR2State extends State<ScanQR2> {
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
                height: Get.height * 0.21,
              ),
              Icon(
                Icons.check_circle_outline_rounded,
                size: 50,
                color: psaff,
              ),
              SizedBox(
                height: Get.height * 0.041,
              ),
              Text(
                "A Valid Code has been scanned",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DM sans medium',
                    color: ptext,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: Get.height * 0.041,
              ),
              Text(
                "Expect a call soon\nPlease keep your phone handy",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'DM sans medium', color: ptext),
              ),
              SizedBox(
                height: Get.height * 0.051,
              ),
              Container(
                width: Get.width * 0.35,
                height: Get.width * 0.13,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(psaff),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.call),
                        Text(
                          "Connect",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
