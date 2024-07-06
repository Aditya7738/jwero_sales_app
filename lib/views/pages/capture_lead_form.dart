import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/constants/fontsizes.dart';
import 'package:jwero_sales_app/views/pages/home_screen.dart';
import 'package:jwero_sales_app/views/widgets/custom_button.dart';
import 'package:jwero_sales_app/views/widgets/custom_text_form_field.dart';

class CaptureLeadForm extends StatefulWidget {
  final String title;
  CaptureLeadForm({super.key, required this.title});

  @override
  State<CaptureLeadForm> createState() => _CaptureLeadFormState();
}

class _CaptureLeadFormState extends State<CaptureLeadForm> {
  TextEditingController textEditingController = TextEditingController();

  DateTime selectedDate = DateTime.now();

  TextEditingController _birthdateController = TextEditingController();
  TextEditingController _anniversaryDateController = TextEditingController();
  Future<String> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1945),
        lastDate: DateTime(2025));

    if (picked != null && picked != selectedDate) {
      print(" DATE ${picked.toLocal().toString()}");
      return "${picked.day}/${picked.month}/${picked.year}";
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: InkWell(
          onTap: () {
            Get.to(() => HomeScreen());
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Scrollbar(
          child: Container(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x66000000),
                        blurRadius: 1,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  // BoxDecoration(
                  //     border: Border.all(
                  //         color: Colors.grey, style: BorderStyle.solid),
                  //     borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'More info',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          child: const Icon(Icons
                                              .keyboard_arrow_down_rounded),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Borivali',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        height: 0,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                    DropdownButton(
                                        elevation: 0,
                                        // value: ,
                                        icon: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: const Icon(Icons
                                              .keyboard_arrow_down_rounded),
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
                                  inputFontSize:
                                      Fontsizes.textFormInputFieldSize,
                                  errorFontSize: Fontsizes.errorTextSize,
                                  textEditingController:
                                      TextEditingController(),
                                  keyboardType: TextInputType.name,
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
                                          child: const Icon(Icons
                                              .keyboard_arrow_down_rounded),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x66000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    // BoxDecoration(
                    //     border: Border.all(
                    //         color: Colors.grey, style: BorderStyle.solid),
                    //     borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lead details',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
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
                                style: TextStyle(
                                    fontSize: 19.sp, color: Colors.red)),
                            SizedBox(
                              width: Get.width * 0.16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "First name",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  width: Get.width * 0.338,
                                  child: CustomTextFormField(
                                    inputFontSize:
                                        Fontsizes.textFormInputFieldSize,
                                    errorFontSize: Fontsizes.errorTextSize,
                                    textEditingController:
                                        TextEditingController(),
                                    keyboardType: TextInputType.name,
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
                                    fontSize: 17.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  width: Get.width * 0.338,
                                  child: CustomTextFormField(
                                    inputFontSize:
                                        Fontsizes.textFormInputFieldSize,
                                    errorFontSize: Fontsizes.errorTextSize,
                                    textEditingController:
                                        TextEditingController(),
                                    keyboardType: TextInputType.name,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text("Mobile number",
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    fontFamily: 'Inter',
                                  )),
                            ),
                            Text("*",
                                style: TextStyle(
                                    fontSize: 19.sp, color: Colors.red)),
                            SizedBox(
                              width: Get.width * 0.125,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dial code",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 65.0,
                                  // width: Get.width * 0.228,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  width: Get.width * 0.225,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/images/indian_flag.png",
                                            width: 30.0,
                                            height: 30.0,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "+91",
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                            ),
                                          )
                                        ],
                                      ),
                                      DropdownButton(
                                          elevation: 0,
                                          // value: ,
                                          icon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Icon(Icons
                                                .keyboard_arrow_down_rounded),
                                          ),
                                          items: null,
                                          onChanged: null),
                                    ],
                                  ),
                                  //  CustomTextFormField(
                                  //   inputFontSize: Fontsizes.textFormInputFieldSize,
                                  //   errorFontSize: Fontsizes.errorTextSize,
                                  //   textEditingController: TextEditingController(),
                                  // ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      activeColor: Color(0xFF0EAD1E),
                                      //  checkColor: Color(0xFF0EAD1E),
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    // const SizedBox(
                                    //   width: 10.0,
                                    // ),
                                    Text(
                                      'This is the same number for WhatsApp',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 16.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.28,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            // SizedBox(
                            //   width: 20.0,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone number",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  width: Get.width * 0.45,
                                  child: CustomTextFormField(
                                    inputFontSize:
                                        Fontsizes.textFormInputFieldSize,
                                    errorFontSize: Fontsizes.errorTextSize,
                                    textEditingController:
                                        TextEditingController(),
                                    keyboardType: TextInputType.number,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("City",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.215,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select city",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 65.0,
                                  width: Get.width * 0.694,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      DropdownButton(
                                          icon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Icon(Icons
                                                .keyboard_arrow_down_rounded),
                                          ),
                                          items: null,
                                          onChanged: null),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Address",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.185,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter address",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 120.0,
                                    width: Get.width * 0.694,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: TextField(
                                      keyboardType: TextInputType.multiline,
                                      controller: TextEditingController(),
                                      maxLines: 4,
                                    ))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Date of birth",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.155,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select date",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  // color: Colors.red,
                                  height: 65.0,
                                  width: Get.width * 0.694,
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize:
                                            Fontsizes.textFormInputFieldSize),
                                    controller: _birthdateController,
                                    keyboardType: TextInputType.datetime,
                                    onTap: () async {
                                      print("CALENDAR PRESSED");

                                      _birthdateController.text =
                                          await _selectedDate(context);
                                    },
                                    decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          fontSize:
                                              Fontsizes.tabletErrorTextSize,
                                          color: Colors.red),
                                      suffixIcon:
                                          Icon(Icons.calendar_month_outlined),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color.fromARGB(
                                                255, 221, 221, 221),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),

                                // Container(
                                //   height: 65.0,
                                //   width: Get.width * 0.694,
                                //   decoration: BoxDecoration(
                                // border: Border.all(
                                //     color: Colors.grey,
                                //     style: BorderStyle.solid),
                                // borderRadius:
                                //     BorderRadius.circular(10.0)),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(""),
                                //       Padding(
                                //         padding:
                                //             const EdgeInsets.only(right: 16.0),
                                //         child:
                                //             GestureDetector(
                                //               onTap: () {

                                //                 CalendarDatePicker(
                                //                   initialDate: DateTime.now(),
                                //                   firstDate: DateTime.now() - DateTime.timestamp(),
                                //                    lastDate: lastDate,
                                //                     onDateChanged: onDateChanged)
                                //               },
                                //               child: Icon(Icons.calendar_month_outlined)),
                                //       )
                                //     ],
                                //   ),
                                // )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Anniversary",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.158,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select date",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  // color: Colors.red,
                                  height: 65.0,
                                  width: Get.width * 0.694,
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize:
                                            Fontsizes.textFormInputFieldSize),
                                    controller: _anniversaryDateController,
                                    keyboardType: TextInputType.datetime,
                                    onTap: () async {
                                      print("CALENDAR PRESSED");

                                      _anniversaryDateController.text =
                                          await _selectedDate(context);
                                    },
                                    decoration: InputDecoration(
                                      errorStyle: TextStyle(
                                          fontSize:
                                              Fontsizes.tabletErrorTextSize,
                                          color: Colors.red),
                                      suffixIcon:
                                          Icon(Icons.calendar_month_outlined),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color.fromARGB(
                                                255, 221, 221, 221),
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                // Container(
                                //   height: 65.0,
                                //   width: Get.width * 0.694,
                                //   decoration: BoxDecoration(
                                //       border: Border.all(
                                //           color: Colors.grey,
                                //           style: BorderStyle.solid),
                                //       borderRadius:
                                //           BorderRadius.circular(10.0)),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Text(""),
                                //       Padding(
                                //         padding:
                                //             const EdgeInsets.only(right: 16.0),
                                //         child:
                                //             Icon(Icons.calendar_month_outlined),
                                //       )
                                //     ],
                                //   ),
                                // )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    // decoration: BoxDecoration(
                    //     border: Border.all(
                    //         color: Colors.grey, style: BorderStyle.solid),
                    //     borderRadius: BorderRadius.circular(10.0)),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x66000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social media details',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/whatsapp_icon.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("WhatsApp number",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),

                            SizedBox(
                              width: Get.width * 0.083,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dial code",
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 65.0,
                                  // width: Get.width * 0.228,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey,
                                          style: BorderStyle.solid),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  width: Get.width * 0.225,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            "assets/images/indian_flag.png",
                                            width: 30.0,
                                            height: 30.0,
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "+91",
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                            ),
                                          )
                                        ],
                                      ),
                                      DropdownButton(
                                          elevation: 0,
                                          // value: ,
                                          icon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Icon(Icons
                                                .keyboard_arrow_down_rounded),
                                          ),
                                          items: null,
                                          onChanged: null),
                                    ],
                                  ),
                                  //  CustomTextFormField(
                                  //   inputFontSize: Fontsizes.textFormInputFieldSize,
                                  //   errorFontSize: Fontsizes.errorTextSize,
                                  //   textEditingController: TextEditingController(),
                                  // ),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 20.0,
                            ),
                            // SizedBox(
                            //   width: 20.0,
                            // ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Phone number",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  width: Get.width * 0.45,
                                  child: CustomTextFormField(
                                    inputFontSize:
                                        Fontsizes.textFormInputFieldSize,
                                    errorFontSize: Fontsizes.errorTextSize,
                                    textEditingController:
                                        TextEditingController(),
                                    keyboardType: TextInputType.number,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/instagram_icon.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Instagram ID",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.122,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter id",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                    height: 65.0,
                                    width: Get.width * 0.69,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: CustomTextFormField(
                                        inputFontSize:
                                            Fontsizes.textFormInputFieldSize,
                                        errorFontSize: Fontsizes.errorTextSize,
                                        textEditingController:
                                            textEditingController,
                                        keyboardType: TextInputType.text))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/facebook_icon.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Facebook ID",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.126,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter id",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                    height: 65.0,
                                    width: Get.width * 0.69,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: CustomTextFormField(
                                        inputFontSize:
                                            Fontsizes.textFormInputFieldSize,
                                        errorFontSize: Fontsizes.errorTextSize,
                                        textEditingController:
                                            textEditingController,
                                        keyboardType: TextInputType.text))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/linkedin_icon.png",
                              width: 30.0,
                              height: 30.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Linkedin ID",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  fontFamily: 'Inter',
                                )),
                            SizedBox(
                              width: Get.width * 0.135,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Enter id",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                    height: 65.0,
                                    width: Get.width * 0.69,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: CustomTextFormField(
                                        inputFontSize:
                                            Fontsizes.textFormInputFieldSize,
                                        errorFontSize: Fontsizes.errorTextSize,
                                        textEditingController:
                                            textEditingController,
                                        keyboardType: TextInputType.text))
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ))
              ],
            )),
          ),
        ),
      ),
    );
  }
}
