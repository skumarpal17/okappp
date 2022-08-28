import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class ManageContact extends StatefulWidget {
  const ManageContact({Key? key}) : super(key: key);

  @override
  State<ManageContact> createState() => _ManageContactState();
}

class _ManageContactState extends State<ManageContact> {
  //otp sent popup
  void alert2() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Please enter the OTP sent to",
                    style: TextStyle(
                      fontFamily: 'DM sans',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "9856478476",
                    style: TextStyle(
                      fontFamily: 'DM sans medium',
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text("OTP"),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Get.width * 0.25,
                        height: Get.width * 0.13,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: psaff),
                            )),
                      ),
                      Container(
                        width: Get.width * 0.25,
                        height: Get.width * 0.13,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(psaff),
                            ),
                            onPressed: alert3,
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            )));
  }

  //delete confirmation popup
  void alert3() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Are you sur want to delete",
                    style: TextStyle(
                      fontFamily: 'DM sans',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "9856478476",
                    style: TextStyle(
                      fontFamily: 'DM sans medium',
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Text("Answer 2 + 7?"),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: Get.width * 0.25,
                        height: Get.width * 0.13,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: psaff),
                            )),
                      ),
                      Container(
                        width: Get.width * 0.25,
                        height: Get.width * 0.13,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(psaff),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            )));
  }

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
                        "Manage Contact",
                        style: TextStyle(
                            fontFamily: 'DM sans',
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
                    "If you delete a contact and wish to add them again later,\nwe would once again need to validate the number",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontFamily: 'DM sans medium', color: ptext),
                  ),
                  SizedBox(
                    height: Get.height * 0.016,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 33,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 14.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              border: Border.all(color: ptext.withOpacity(0.3)),
                            ),
                            height: 120,
                            width: Get.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today_rounded,
                                      color: psaff,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "16-jan-21",
                                      style: TextStyle(
                                        fontFamily: 'DM sans medium',
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: alert2,
                                      icon: Icon(
                                        Icons.cancel,
                                        color: psaff,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: psaff,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "8767546756",
                                      style: TextStyle(
                                        fontFamily: 'DM sans',
                                        fontSize: 17,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.shield,
                                      color: psaff,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Family",
                                      style: TextStyle(
                                        fontFamily: 'DM sans medium',
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          // color: Colors.teal,
          height: 100,
          width: 100,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 45,
                  width: 45,
                  // child: Text(""),
                  decoration: BoxDecoration(
                    // color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ptext),
                  ),
                ),
              ),
              Center(
                  child: Icon(
                Icons.settings,
                color: psaff,
                size: 24,
              )),
              Positioned(
                child: Icon(
                  Icons.add,
                  color: psaff,
                  size: 20,
                ),
                top: 30,
                right: 27,
              ),
              Positioned(
                child: Text("Add a Contact"),
                left: 5,
                bottom: 6,
              )
            ],
          ),
        ));
  }
}
