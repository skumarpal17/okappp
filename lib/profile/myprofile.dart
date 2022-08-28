import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    double wd = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
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
                    "My Profile",
                    style: TextStyle(
                        fontFamily: 'DM sans medium',
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
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
                "Long Press the volume up button to activate an SOS\nNo roll back is provided as a security feature",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'DM sans',
                  color: ptext,
                ),
              ),
              SizedBox(
                height: Get.height * 0.027,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: ptext),
                ),
                padding: EdgeInsets.all(20),
                width: Get.width,
                height: Get.height * 0.19,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joshua Dsouza",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18.0, top: 4),
                      child: Text("9886786674"),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.file_download_outlined,
                          color: psaff,
                        ),
                        Text(
                          "Download QR",
                          style: TextStyle(
                              fontFamily: 'DM sans',
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.file_download_outlined,
                          color: psaff,
                        ),
                        Text(
                          "Download QR",
                          style: TextStyle(
                              fontFamily: 'DM sans',
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: ht * 0.044,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ptext),
                    ),
                    height: Get.height * 0.17,
                    width: Get.width * 0.45,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 9.0),
                          child: CircleAvatar(
                            // child: Image.asset("assets/images/sos.png"),
                            radius: 24,
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "SOS is actives",
                              style: TextStyle(
                                fontFamily: 'DM sans medium',
                              ),
                            ),
                            CupertinoSwitch(
                              activeColor: psaff,
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ptext),
                    ),
                    width: Get.width * 0.45,
                    height: Get.height * 0.17,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.flag,
                          size: 32,
                          color: psaff,
                        ),
                        Text(
                          "Report an issue",
                          style: TextStyle(
                            fontFamily: 'DM sans medium',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: ht * 0.044,
              ),
              Container(
                decoration: BoxDecoration(
                    color: psaff.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                width: Get.width * 0.89,
                height: Get.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "some offers you liked\n will expire in 5 days ",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Reedem Now",
                          style: TextStyle(fontFamily: 'DM sans', color: psaff),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: psaff,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ht * 0.04,
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.groups_outlined,
                color: psaff,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: psaff,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.window_rounded,
                color: psaff,
              ),
              label: ""),
        ],
      ),
    );
  }
}
