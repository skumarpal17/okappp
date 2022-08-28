import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:dotted_border/dotted_border.dart';

import '../constant/color.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({Key? key}) : super(key: key);

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
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
                      "Image Gallery",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Text(
                      "Upload Image",
                      style: TextStyle(
                          fontFamily: 'DM sans ',
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 19,
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.017,
                ),
                Text(
                  "Manage 4 images of your choice for\n"
                  "your screen lock. Upload the images\n"
                  "from your phone",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'DM sans', color: ptext),
                ),
                Container(
                    height: wd * 0.25,
                    width: wd * 0.65,
                    padding: EdgeInsets.all(14),
                    child: Text("Dotted upload img")

                    // DottedBorder(
                    //   color: psaff,
                    //   strokeWidth: 1,
                    //   child: Center(
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children: [
                    //         Icon(
                    //           Icons.file_upload_outlined,
                    //           color: psaff,
                    //         ),
                    //         Text(
                    //           "Upload Image",
                    //           style: TextStyle(color: psaff, fontSize: 18),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ptext),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 125,
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Current Images",
                          style: TextStyle(fontFamily: 'DM sans', color: psaff),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 85,
                          ),
                          // Image.asset(""),
                          Column(
                            children: [
                              Text(
                                "Image4",
                                style: TextStyle(
                                    fontFamily: 'DM sans medium',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2.4 MB",
                                style: TextStyle(color: ptext),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: psaff,
                                size: 25,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ptext),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 79,
                          width: Get.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.image_outlined,
                                    size: 40,
                                  ),
                                  // Image.asset(""),
                                  Column(
                                    children: [
                                      Text(
                                        "Image${index}",
                                        style: TextStyle(
                                            fontFamily: 'DM sans medium',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "2.4 MB",
                                        style: TextStyle(color: ptext),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Set image",
                                    style: TextStyle(color: psaff),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.delete,
                                        color: psaff,
                                        size: 25,
                                      )),
                                ],
                              )
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
    );
  }
}
