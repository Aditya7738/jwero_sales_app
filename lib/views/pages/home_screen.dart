import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:jwero_sales_app/constants/strings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';
import 'package:jwero_sales_app/views/pages/contact_page.dart';
import 'package:jwero_sales_app/views/pages/session_history.dart';
import 'package:jwero_sales_app/views/widgets/custom_card_option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void showDropDownListDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          elevation: 10.0,
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/profile.png",
                    width: 20.0,
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "My profile",
                    style: TextStyle(fontSize: 16.sp),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                showLogoutDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logout.png",
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(color: Colors.red, fontSize: 16.sp),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }

  void showLogoutDialog(BuildContext context) {
    // double deviceWidth = MediaQuery.of(context).size.width;

    // final customerProvider =
    //     Provider.of<CustomerProvider>(context, listen: false);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          // icon: Container(
          //     // width: 10.0,
          //     // height: 10.0,
          //     padding: EdgeInsets.all(5.0),
          //     decoration: BoxDecoration(
          //         color: Color(0xFFF7F7FD),
          //         shape: BoxShape.rectangle,
          //         borderRadius: BorderRadius.circular(20.0)),
          //     child: Icon(
          //       Icons.logout_rounded,
          //       color: Colors.black,
          //     )),
          // alignment: Alignment.centerRight,
          title: Container(
              alignment: Alignment.centerLeft,
              width: 10.0,
              // height: 10.0,
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  //  color: Color(0xFFF7F7FD),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.logout_rounded,
                color: Colors.black,
              )),
          content: Container(
            height: Get.height * .08,
            width: Get.width * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Log out",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp
                      //deviceWidth > 600 ? deviceWidth / 29 : deviceWidth / 25,
                      ),
                ),
                Text('Are you sure you want to log out?',
                    style: TextStyle(
                      color: Color(0xFF555770),
                      fontSize: 16.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.32,
                    )),
              ],
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      // color: Colors.black,
                      //fontSize: deviceWidth > 600 ? 25.sp : 17.sp
                    ),
                  )),
            ),
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    "Log out",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        //fontSize: deviceWidth > 600 ? 25.sp : 17.sp
                        ),
                  )),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                      onTap: () {
                        showDropDownListDialog(context);
                      },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning, Rohan",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Welcome back",
                style: TextStyle(
                    color: Color.fromARGB(255, 190, 190, 190), fontSize: 17.sp),
              ),
              SizedBox(
                height: 20.0,
              ),
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    Strings.defaultImagePath,
                    fit: BoxFit.fill,
                    height: Get.height * 0.4,
                    width: Get.width,
                  ),
                ),
                Positioned(
                  bottom: 32.0,
                  left: 24.0,
                  child: Text(
                    'Explore products & start a session',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 30.0,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => CaptureLeadForm(
                            title: "Add new lead",
                          ));
                    },
                    child: const CustomCard(
                      outerColor: Color(0xFFFF2E74),
                      innerColor: Color(0xFFEA004E),
                      imagePath: "assets/images/add_contact.png",
                      label: 'Lead capture / Feedback',
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(() => ContactPage());
                    },
                    child: CustomCard(
                        outerColor: Color(0xFF007BFC),
                        innerColor: Color(0xFF0274EA),
                        imagePath: "assets/images/all_contacts.png",
                        label: 'All contacts'),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.to(() => SessionsHisotryPage());
                    },
                    child: CustomCard(
                      outerColor: Color(0xFF02A698),
                      innerColor: Color(0xFF019185),
                      imagePath: "assets/images/session_history.png",
                      label: 'Sessions history',
                    ),
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
            ],
          ),
        ));
  }
}
