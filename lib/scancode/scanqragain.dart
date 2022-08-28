import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class ScanAgain extends StatefulWidget {
  const ScanAgain({Key? key}) : super(key: key);

  @override
  State<ScanAgain> createState() => _ScanAgainState();
}

class _ScanAgainState extends State<ScanAgain> {
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
                  height: Get.height * 0.050,
                ),
                InkWell(
                  onTap: () {
                    //////////
                    showModalBottomSheet<void>(
                      shape: RoundedRectangleBorder(),
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 200,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Text('Invalid code. please try again.'),
                                Text(
                                  'SCAN AGAIN',
                                  // style: TextStyle(color: ptext),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );

                    /////////////
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    width: Get.width * 0.45,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.upload_outlined),
                          Text("Upload from gallery")
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.180,
                ),
                Text(
                  "Will scan only a valid code issued by oyekidher",
                  style: TextStyle(
                    fontFamily: 'DM sans medium',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
