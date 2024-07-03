import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/views/widgets/custom_button.dart';
import 'package:jwero_sales_app/views/widgets/custom_text_form_field.dart';

class CaptureLeadForm extends StatefulWidget {
  const CaptureLeadForm({super.key});

  @override
  State<CaptureLeadForm> createState() => _CaptureLeadFormState();
}

class _CaptureLeadFormState extends State<CaptureLeadForm> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF091E42),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Color(0xFF091E42),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
        title: Text(
          "Add new lead",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.grey, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'More info',
                    style: TextStyle(
                      color: Color(0xFF091E42),
                      fontSize: 19.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.32,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Team member",
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 65.0,
                            width: Get.width * 0.228,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rakshit Pandey',
                                  style: TextStyle(
                                    color: Color(0x7F555770),
                                    fontSize: 18.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                                DropdownButton(
                                    elevation: 0,
                                    // value: ,
                                    icon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                          Icons.keyboard_arrow_down_rounded),
                                    ),
                                    items: null,
                                    onChanged: null),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Branch",
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 65.0,
                            width: Get.width * 0.228,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rakshit Pandey',
                                  style: TextStyle(
                                    color: Color(0x7F555770),
                                    fontSize: 18.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                                DropdownButton(
                                    elevation: 0,
                                    // value: ,
                                    icon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                          Icons.keyboard_arrow_down_rounded),
                                    ),
                                    items: null,
                                    onChanged: null),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Referred by",
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: Get.width * 0.228,
                            // padding: EdgeInsets.all(10.0),
                            // decoration: BoxDecoration(
                            //     border: Border.all(
                            //         color: Colors.grey,
                            //         style: BorderStyle.solid),
                            //     borderRadius: BorderRadius.circular(10.0)),
                            child: CustomTextFormField(
                              inputFontSize: Fontsizes.textFormInputFieldSize,
                              errorFontSize: Fontsizes.errorTextSize,
                              textEditingController: TextEditingController(),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Occassion",
                            style: TextStyle(
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: 65.0,
                            width: Get.width * 0.228,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Text(
                                //   'Rakshit Pandey',
                                //   style: TextStyle(
                                //     color: Color(0x7F555770),
                                //     fontSize: 18.sp,
                                //     fontFamily: 'Inter',
                                //     fontWeight: FontWeight.w500,
                                //     height: 0,
                                //     letterSpacing: -0.32,
                                //   ),
                                // ),
                                DropdownButton(
                                    // value: ,
                                    icon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: const Icon(
                                          Icons.keyboard_arrow_down_rounded),
                                    ),
                                    items: null,
                                    onChanged: null),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lead details',
                      style: TextStyle(
                        color: Color(0xFF091E42),
                        fontSize: 19.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.32,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text("Full name",
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: 'Inter',
                              )),
                        ),
                        Text("*",
                            style:
                                TextStyle(fontSize: 19.sp, color: Colors.red)),
                        SizedBox(
                          width: Get.width * 0.16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First name",
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: Get.width * 0.339,
                              child: CustomTextFormField(
                                inputFontSize: Fontsizes.textFormInputFieldSize,
                                errorFontSize: Fontsizes.errorTextSize,
                                textEditingController: TextEditingController(),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last name",
                              style: TextStyle(
                                fontSize: 18.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              width: Get.width * 0.339,
                              child: CustomTextFormField(
                                inputFontSize: Fontsizes.textFormInputFieldSize,
                                errorFontSize: Fontsizes.errorTextSize,
                                textEditingController: TextEditingController(),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
