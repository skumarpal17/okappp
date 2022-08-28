import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  //add number popup
  void alert1() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                content: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Confirm adding",
                    style: TextStyle(
                      fontFamily: 'DM sans medium',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("9856478476"),
                  SizedBox(
                    height: 25,
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
                              "confirm",
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
                      "Add a Contact",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
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
                  "Please Fill out the correct detailsto verify\n"
                  "your vechile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DM sans medium',
                    color: ptext,
                  ),
                ),
                textField("Category"),
                textField("Name"),
                textField("Mobile Number"),
                SizedBox(
                  height: Get.height * 0.3,
                ),
                Container(
                  height: Get.height * 0.058,
                  decoration: BoxDecoration(),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: alert1,
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
                  height: Get.height * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding textField(hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
