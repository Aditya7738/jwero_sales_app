import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/constants/strings.dart';
import 'package:jwero_sales_app/controller/login_form_controller.dart';
import 'package:jwero_sales_app/helpers/validation_helper.dart';
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
    Strings.defaultImagePath,
    Strings.defaultImagePath,
    Strings.defaultImagePath,
    Strings.defaultImagePath
  ];

  int currentIndex = 0;

  final customTextFormFieldController = Get.put(LoginFormController());

  // bool isObscureText = true;

  Widget forTabletScreen(BuildContext context) {
    return Container(
      height: Get.height,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.red,
            height: Get.height,
            padding: const EdgeInsets.only(right: 20.0),
            width: (Get.width * 0.3),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: Get.height * 0.1),
                      child: Image.asset(
                        "assets/images/jwero_logo.png",
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: 5.0,
                        // ),
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
                              Get.width > 600 ? Get.width / 2 : Get.width - 40,
                          child: CustomTextFormField(
                            inputFontSize: Fontsizes.textFormInputFieldSize,
                            errorFontSize: Fontsizes.errorTextSize,
                            textEditingController: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: ValidationHelper.isEmailValid,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text("Password"),
                        SizedBox(
                          height: 10.0,
                        ),
                        // Container(
                        //   width:
                        //       Get.width > 600 ? Get.width / 2 : Get.width - 40,
                        //   child: CustomTextFormField(
                        //     inputFontSize: Fontsizes.textFormInputFieldSize,
                        //     errorFontSize: Fontsizes.errorTextSize,
                        //     textEditingController: _passwordController,
                        //     keyboardType: TextInputType.visiblePassword,
                        //     obscureText: true,
                        //   ),
                        // ),

                        Obx(
                          () => TextFormField(
                            // obscureText: widget.obscureText != null ? widget.obscureText! : false,
                            obscureText: customTextFormFieldController
                                .rxIsPasswordHidden.value,
                            style: TextStyle(
                                fontSize: Fontsizes.textFormInputFieldSize),
                            //   controller: TextEditingController(),
                            keyboardType: TextInputType.visiblePassword,
                            // validator: widget.validator,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  log("customTextFormFieldController.rxIsPasswordHidden.value ${customTextFormFieldController.rxIsPasswordHidden.value} ");
                                  // customTextFormFieldController
                                  //         .rxIsPasswordHidden.value =
                                  //     !customTextFormFieldController
                                  //         .rxIsPasswordHidden.value;
                                  customTextFormFieldController.updateObscure(
                                      !customTextFormFieldController
                                          .rxIsPasswordHidden.value);
                                },
                                icon: Icon(
                                  customTextFormFieldController
                                          .rxIsPasswordHidden.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  size: 35.0,
                                ),
                              ),
                              errorStyle: TextStyle(
                                  fontSize: Fontsizes.errorTextSize,
                                  color: Colors.red),
                              // labelStyle: TextStyle(fontSize: widget.labelFontSize),
                              // // errorText: ,
                              // labelText: widget.labelText,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 221, 221, 221),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
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
                            buttonWidth: Get.width * 0.3,
                            fontSize: Fontsizes.buttonTextSize,
                            buttonBackgroundColor:
                                Color.fromARGB(255, 251, 207, 14),
                            text: "LOGIN",
                            circularIndicatorColor: Colors.white,
                            textColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
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
          SizedBox(
              // color: Colors.yellow,
              width: (Get.width * 0.668),
              height: Get.height,
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
                        height: Get.height - 40,
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
                    //right: 190.0,
                    right: 340.0,
                    child: Container(
                        // color: Colors.purple,
                        padding: EdgeInsets.only(left: 30.0),
                        width: (Get.width * 0.7) - 40,
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
    );
  }

  Widget forMobileScreen(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40.0),
      child: SingleChildScrollView(
        child: Scrollbar(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   height: 10.0,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
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
                      width: Get.width > 600 ? Get.width / 2 : Get.width,
                      child: CustomTextFormField(
                        inputFontSize: Fontsizes.textFormInputFieldSize,
                        errorFontSize: Fontsizes.errorTextSize,
                        textEditingController: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: ValidationHelper.isEmailValid,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text("Password"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Obx(
                      () => TextFormField(
                        // obscureText: widget.obscureText != null ? widget.obscureText! : false,
                        obscureText: customTextFormFieldController
                            .rxIsPasswordHidden.value,
                        style: TextStyle(
                            fontSize: Fontsizes.textFormInputFieldSize),
                        //   controller: TextEditingController(),
                        keyboardType: TextInputType.visiblePassword,
                        // validator: widget.validator,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              log("customTextFormFieldController.rxIsPasswordHidden.value ${customTextFormFieldController.rxIsPasswordHidden.value} ");
                              // customTextFormFieldController
                              //         .rxIsPasswordHidden.value =
                              //     !customTextFormFieldController
                              //         .rxIsPasswordHidden.value;
                              customTextFormFieldController.updateObscure(
                                  !customTextFormFieldController
                                      .rxIsPasswordHidden.value);
                            },
                            icon: Icon(
                              customTextFormFieldController
                                      .rxIsPasswordHidden.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 35.0,
                            ),
                          ),
                          errorStyle: TextStyle(
                              fontSize: Fontsizes.errorTextSize,
                              color: Colors.red),
                          // labelStyle: TextStyle(fontSize: widget.labelFontSize),
                          // // errorText: ,
                          // labelText: widget.labelText,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: const Color.fromARGB(255, 221, 221, 221),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                        ),
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
                        buttonWidth: Get.width - 40,
                        fontSize: Fontsizes.buttonTextSize,
                        buttonBackgroundColor:
                            Color.fromARGB(255, 251, 207, 14),
                        text: "LOGIN",
                        circularIndicatorColor: Colors.white,
                        textColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    )
                  ],
                ),

                // SizedBox(
                //   height: 10.0,
                // ),
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
    double deviceHeight = Get.height;

    log("LOGIN PAGE deviceWidth ${Get.width}");
    log("LOGIN PAGE deviceHeight ${Get.height}");
    return Scaffold(
        body: Get.width > 600
            ? forTabletScreen(context)
            : forMobileScreen(context));
  }
}
