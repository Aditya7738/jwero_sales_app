import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jwero_sales_app/constants/strings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jwero_sales_app/views/widgets/custom_card_option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CachedNetworkImage(
            imageUrl: Strings.app_logo,
            fit: BoxFit.fill,
            height: 30.0,
            width: 160.0,
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10.0),
                alignment: Alignment.center,
                //TODO: give height to button container after it start loading
                // width: 210.0,
                decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                        color: const Color.fromARGB(255, 216, 216, 216)),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15.0)),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/default_image.png",
                      width: 25.0,
                      height: 20.0,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Rohan Shetty",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 30.0,
                      ),
                    )
                    // Container(
                    //   color: Colors.yellow,
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     alignment: Alignment.center,
                    //     iconSize: 30.0,
                    //     color: Colors.blue,
                    //     icon: Icon(

                    //     ),
                    //   ),
                    // )
                  ],
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning, Rohan",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(
                            color: Color.fromARGB(255, 190, 190, 190),
                            fontSize: 17.sp),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(right: 10.0),
                      alignment: Alignment.center,
                      //TODO: give height to button container after it start loading
                      // width: 210.0,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          border: Border.all(
                              color: const Color.fromARGB(255, 216, 216, 216)),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15.0)),
                      //  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Strings.defaultImagePath,
                            height: 20.0,
                            width: 20.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Get started (60%)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.sp),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    Strings.defaultImagePath,
                    fit: BoxFit.fill,
                    height: Get.height * 0.4,
                    width: Get.width,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      outerColor: Color(0xFFFF2E74),
                      innerColor: Color(0xFFEA004E),
                      imagePath: "assets/images/add_contact.png",
                      label: 'Lead capture / Feedback',
                    ),
                    CustomCard(
                        outerColor: Color(0xFF007BFC),
                        innerColor: Color(0xFF0274EA),
                        imagePath: "assets/images/all_contacts.png",
                        label: 'All contacts'),

                    CustomCard(
                      outerColor: Color(0xFF02A698),
                      innerColor: Color(0xFF019185),
                      imagePath: "assets/images/session_history.png",
                      label: 'Sessions history',
                    ),
                    // Expanded(
                    //   child: Container(
                    //     margin: EdgeInsets.only(right: 20.0),
                    //     height: Get.height * 0.2,
                    //     padding: EdgeInsets.all(20.0),
                    //     decoration: BoxDecoration(
                    //         color: ,
                    //         // border: Border.all(
                    //         //     color: const Color.fromARGB(255, 216, 216, 216)),
                    //         shape: BoxShape.rectangle,
                    //         borderRadius: BorderRadius.circular(10.0)),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //             padding: EdgeInsets.all(10.0),
                    //             decoration: BoxDecoration(
                    //                 color: ,
                    //                 shape: BoxShape.rectangle,
                    //                 borderRadius: BorderRadius.circular(10.0)),
                    //             child: Image.asset(
                    //               "assets/images/image.png",
                    //               width: 20.0,
                    //               height: 20.0,
                    //             )),
                    //         Text(
                    //           ',
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontFamily: 'Inter',
                    //             fontWeight: FontWeight.w600,
                    //             height: 0,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Container(
                    //     height: Get.height * 0.2,
                    //     padding: EdgeInsets.all(25.0),
                    //     decoration: BoxDecoration(
                    //         color: ,
                    //         // border: Border.all(
                    //         //     color: const Color.fromARGB(255, 216, 216, 216)),
                    //         shape: BoxShape.rectangle,
                    //         borderRadius: BorderRadius.circular(15.0)),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Container(
                    //             padding: EdgeInsets.all(10.0),
                    //             decoration: BoxDecoration(
                    //                 color: ,
                    //                 shape: BoxShape.rectangle,
                    //                 borderRadius: BorderRadius.circular(10.0)),
                    //             child: Image.asset(
                    //               "assets/images/image.png",
                    //               width: 20.0,
                    //               height: 20.0,
                    //             )),
                    //         Text(
                    //           ,
                    //           style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontFamily: 'Inter',
                    //             fontWeight: FontWeight.w600,
                    //             height: 0,
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                )
              ])
            ],
          ),
        ));
  }
}
