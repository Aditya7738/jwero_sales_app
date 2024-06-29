import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/views/pages/home_screen.dart';
import 'package:jwero_sales_app/views/widgets/custom_button.dart';
import 'package:jwero_sales_app/views/widgets/custom_text_form_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final imageList = <String>[
    "assets/images/default_image.png",
    "assets/images/default_image.png",
    "assets/images/default_image.png",
    "assets/images/default_image.png"
  ];

  int currentIndex = 0;

  Widget forTabletScreen(BuildContext context) {
    return SizedBox();
  }

  Widget forMobileScreen(
      BuildContext context, double deviceWidth, double deviceHeight) {
    return SingleChildScrollView(
      child: Container(
        height: deviceHeight,
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(
              //   height: 10.0,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Image.asset(
                  "assets/images/jwero_logo.png",
                  width: 40.0,
                  height: 40.0,
                ),
              ),
              // SizedBox(
              //   height: 50.0,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Please login to continue",
                    style: Fontsizes.subHeadingStyle,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text("Email address"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width:
                        deviceWidth > 600 ? deviceWidth / 2 : deviceWidth - 40,
                    child: CustomTextFormField(
                      inputFontSize: Fontsizes.textFormInputFieldSize,
                      errorFontSize: Fontsizes.errorTextSize,
                      textEditingController: _emailController,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text("Password"),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width:
                        deviceWidth > 600 ? deviceWidth / 2 : deviceWidth - 40,
                    child: CustomTextFormField(
                      inputFontSize: Fontsizes.textFormInputFieldSize,
                      errorFontSize: Fontsizes.errorTextSize,
                      textEditingController: _passwordController,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 24, 125, 207),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('homeScreen');
                    },
                    child: CustomButton(
                      rightIcon: false,
                      leftIcon: false,
                      isLoading: false,
                      buttonWidth: deviceWidth - 40,
                      fontSize: Fontsizes.buttonTextSize,
                      buttonBackgroundColor: Color.fromARGB(255, 251, 207, 14),
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Don't have an account already?  ",
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                    text: "Sign up here",
                    style: TextStyle(
                        color: Color.fromARGB(255, 251, 207, 14),
                        decoration: TextDecoration.underline,
                        overflow: TextOverflow.ellipsis),
                  )
                ], style: TextStyle(fontSize: 18.sp))),
              )
            ],
          ),
        ),
      ),
    );
  }

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  late CarouselController carouselController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    log("LOGIN PAGE deviceWidth $deviceWidth");
    log("LOGIN PAGE deviceHeight $deviceHeight");
    return Scaffold(
      body: Container(
        height: deviceHeight,
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
        child: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Container(
                  height: deviceWidth,
                  padding: const EdgeInsets.only(right: 20.0),
                  width: (deviceWidth / 2),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 120.0),
                          child: Image.asset(
                            "assets/images/jwero_logo.png",
                            width: 40.0,
                            height: 40.0,
                          ),
                        ),
                        // SizedBox(
                        //   height: 50.0,
                        // ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Please login to continue",
                              style: Fontsizes.subHeadingStyle,
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text("Email address"),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: deviceWidth > 600
                                  ? deviceWidth / 2
                                  : deviceWidth - 40,
                              child: CustomTextFormField(
                                inputFontSize: Fontsizes.textFormInputFieldSize,
                                errorFontSize: Fontsizes.errorTextSize,
                                textEditingController: _emailController,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text("Password"),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: deviceWidth > 600
                                  ? deviceWidth / 2
                                  : deviceWidth - 40,
                              child: CustomTextFormField(
                                inputFontSize: Fontsizes.textFormInputFieldSize,
                                errorFontSize: Fontsizes.errorTextSize,
                                textEditingController: _passwordController,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 24, 125, 207),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('homeScreen');
                              },
                              child: CustomButton(
                                rightIcon: false,
                                leftIcon: false,
                                isLoading: false,
                                buttonWidth: deviceWidth - 40,
                                fontSize: Fontsizes.buttonTextSize,
                                buttonBackgroundColor:
                                    Color.fromARGB(255, 251, 207, 14),
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: "Don't have an account already?  ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                              text: "Sign up here",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 251, 207, 14),
                                  decoration: TextDecoration.underline,
                                  overflow: TextOverflow.ellipsis),
                            )
                          ], style: TextStyle(fontSize: 18.sp))),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  width: (deviceWidth / 2) - 40,
                  height: deviceWidth,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        carouselController: carouselController,
                        items: imageList
                            .map((image) => Container(
                                  // width: (deviceWidth / 2) - 20,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    //color: Colors.yellow
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    child: Image.asset(
                                      image,
                                      fit: BoxFit.fill,

                                      //width: (deviceWidth / 2) - 80,
                                    ),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                            viewportFraction: 1.00,
                            autoPlayInterval: const Duration(seconds: 10),
                            height: deviceHeight - 40,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              if (mounted) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }
                            }),
                        //scrollDirection: Axis.horizontal
                      ),
                      Positioned(
                        bottom: 20.0,
                        right: 130.0,
                        child: Container(
                            padding: EdgeInsets.only(left: 30.0),
                            width: (deviceWidth / 2) - 40,
                            child: DotsIndicator(
                              dotsCount: imageList.length,
                              position: currentIndex,
                              onTap: (index) {
                                carouselController.animateToPage(index);
                              },
                              decorator: const DotsDecorator(
                                color: Colors.grey,
                                activeColor: Colors.black,
                                size: const Size(15.0, 9.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.elliptical(10.0, 10.0),
                                    right: Radius.elliptical(10.0, 10.0),
                                  ),
                                ),
                                activeSize: const Size(30.0, 9.0),
                                activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                    left: Radius.elliptical(10.0, 10.0),
                                    right: Radius.elliptical(10.0, 10.0),
                                  ),
                                ),
                              ),
                            )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
