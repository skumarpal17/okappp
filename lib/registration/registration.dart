import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var _controller = TextEditingController();
  var _controllerSal = TextEditingController();
  var _controllerAge = TextEditingController();
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalue = 'Item 1';
  String dropdownvalueSal = 'Item 1';
  String dropdownvalueAge = 'Item 1';

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
                      "Registration",
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
                  "Please select the applicable options and enter the relevant\ndatacorrectly so that we can assist you in \n an emergency",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ptext,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                buildTextField("Name"),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                buildTextField("Surname"),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width * 0.45,
                      child: TextField(
                        controller: _controllerSal,
                        decoration: InputDecoration(
                          hintText: "Salution",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controllerSal.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width * 0.45,
                      child: TextField(
                        controller: _controllerAge,
                        decoration: InputDecoration(
                          hintText: "Agerange",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: PopupMenuButton<String>(
                            icon: const Icon(Icons.arrow_drop_down),
                            onSelected: (String value) {
                              _controllerAge.text = value;
                            },
                            itemBuilder: (BuildContext context) {
                              return items
                                  .map<PopupMenuItem<String>>((String value) {
                                return new PopupMenuItem(
                                    child: new Text(value), value: value);
                              }).toList();
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Occuption",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    suffixIcon: PopupMenuButton<String>(
                      icon: const Icon(Icons.arrow_drop_down),
                      onSelected: (String value) {
                        _controller.text = value;
                      },
                      itemBuilder: (BuildContext context) {
                        return items.map<PopupMenuItem<String>>((String value) {
                          return new PopupMenuItem(
                              child: new Text(value), value: value);
                        }).toList();
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                buildTextField("Pincode"),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Referral Code',
                      suffix: TextButton(
                        child: Text(
                          'Apply',
                          style: TextStyle(color: psaff),
                        ),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                Container(
                  height: Get.height * 0.058,
                  decoration: BoxDecoration(),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        // Get.to();
                      },
                      child: Text("Register"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(psaff),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField buildTextField(hinttext) {
    return TextField(
      decoration: InputDecoration(
          hintText: hinttext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
