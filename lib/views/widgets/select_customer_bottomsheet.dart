import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';

class SelectCustomerBottomSheet extends StatelessWidget {
  const SelectCustomerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.close_sharp,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: TextButton(
                  onPressed: () {
                    Get.to(CaptureLeadForm(
                      title: "Add new contact",
                    ));
                  },
                  // style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(Colors.white),
                  //     shadowColor: MaterialStateProperty.all(
                  //       Color(0x66000000),
                  //     )
                  //     ),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x66000000),
                          blurRadius: 1,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Add new contact',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 5.0),
              child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  // style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(Colors.white),
                  //     shadowColor: MaterialStateProperty.all(
                  //       Color(0x66000000),
                  //     )
                  //     ),
                  child: Container(
                    //width: 129,
                    // height: 43,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 7.2),
                    decoration: ShapeDecoration(
                      color: Color(0xFF091E42),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  )),
            )
          ],
          title: Text(
            "Select customer",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 40.0, bottom: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    //Navigator.of(context).pop();
                  },
                  child: Container(
                      width: Get.width - 40.0,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x66000000),
                            blurRadius: 1,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search_outlined,
                                color: Color(0xFF555770),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Search contact ...',
                                style: TextStyle(
                                  color: Color(0xFF555770),
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: -0.24,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.mic_none_outlined,
                            color: Color(0xFF555770),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  // height: 500,
                  color: Colors.red,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.blue,
                        child: RadioListTile.adaptive(
                          value: "contact",
                          groupValue: "contact name",
                          onChanged: (value) {},
                          title: Text("Title"),
                          subtitle: Text("subttile"),
                          // secondary: Row(
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       width: 64,
                          //       height: 48,
                          //       alignment: Alignment.center,
                          //       decoration: BoxDecoration(
                          //           color: Color(0xFFE9EFFF),
                          //           shape: BoxShape.circle
                          //           // shape: RoundedRectangleBorder(
                          //           //   borderRadius: BorderRadius.circular(9999),
                          //           // ),
                          //           ),
                          //       child: Text(
                          //         'RS',
                          //         textAlign: TextAlign.center,
                          //         style: TextStyle(
                          //           color: Theme.of(context).primaryColor,
                          //           fontSize: 12,
                          //           fontFamily: 'Inter',
                          //           fontWeight: FontWeight.w500,
                          //           height: 0,
                          //         ),
                          //       ),
                          //     ),
                          //     SizedBox(
                          //       width: 20.0,
                          //     ),
                          //     Column(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Text(
                          //           'Santosh Kumar',
                          //           style: TextStyle(
                          //             color: Color(0xFF091E42),
                          //             fontSize: 16,
                          //             fontFamily: 'Inter',
                          //             fontWeight: FontWeight.w600,
                          //             height: 0,
                          //             letterSpacing: -0.32,
                          //           ),
                          //         ),
                          //         Text(
                          //           '+91 996 730 0766',
                          //           style: TextStyle(
                          //             color: Color(0x7F555770),
                          //             fontSize: 14,
                          //             fontFamily: 'Inter',
                          //             fontWeight: FontWeight.w400,
                          //             height: 0,
                          //             letterSpacing: -0.28,
                          //           ),
                          //         )
                          //       ],
                          //     )
                          //   ],
                          // ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
