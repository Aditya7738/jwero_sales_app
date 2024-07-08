import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';
import 'package:jwero_sales_app/views/pages/home_screen.dart';
import 'package:modals/modals.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<TableRow> getListOfTableRow(BuildContext context) {
    List<TableRow> widgets = <TableRow>[];

    for (var i = 0; i < 3; i++) {
      widgets.add(TableRow(
        children: [
          GestureDetector(
            onTap: () {
              //
              // Get.bottomSheet(SessionReport(),
              //     isScrollControlled: true,
              //     ignoreSafeArea: true,
              //     shape: BeveledRectangleBorder());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // color: Colors.red,
                    child: i == 0
                        ? Stack(
                            // alignment: Alignment.topRight,
                            children: [
                              Container(
                                width: 64,
                                height: 48,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xFFE9EFFF),
                                    shape: BoxShape.circle
                                    // shape: RoundedRectangleBorder(
                                    //   borderRadius: BorderRadius.circular(9999),
                                    // ),
                                    ),
                                child: Text(
                                  'DK',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 1.0,
                                  top: 1.0,
                                  child: Container(
                                    width: 22.0,
                                    height: 22.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: SizedBox(),
                                  )),
                              Positioned(
                                  right: 3.0,
                                  top: 3.0,
                                  child: Image.asset(
                                    "assets/images/crown.png",
                                    width: 17.0,
                                    height: 17.0,
                                  ))
                            ],
                          )
                        : Container(
                            width: 64,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFFE9EFFF), shape: BoxShape.circle
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(9999),
                                // ),
                                ),
                            child: Text(
                              'DK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Divya Kadam',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        '+91 9876378273',
                        style: TextStyle(
                          color: Color(0x7F555770),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '0',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              '0',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Text(
            '18/02/2024',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
              letterSpacing: -0.28,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              '3 months ago',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              //print("MODAL CALLED");

              //   showModal(
              //     ModalEntry.positioned(context,
              //       tag: "Actions $i",
              //       // alignment: Alignment.center,
              //       // modalAlignment: Alignment.centerRight,
              //       right: 10.0,

              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.symmetric(
              //                 vertical: 8.0, horizontal: 10.0),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               children: [
              //                 Icon(
              //                   Icons.edit,
              //                   color: Theme.of(context).primaryColor,
              //                 ),
              //                 SizedBox(
              //                   width: 20.0,
              //                 ),
              //                 Text(
              //                   "Edit contact",
              //                   style: TextStyle(
              //                     color: Theme.of(context).primaryColor,
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.symmetric(
              //                 vertical: 8.0, horizontal: 10.0),
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               children: [
              //                 Icon(
              //                   Icons.delete_outline_rounded,
              //                   color: Colors.red,
              //                 ),
              //                 SizedBox(
              //                   width: 20.0,
              //                 ),
              //                 Text(
              //                   "Delete contact",
              //                   style: TextStyle(color: Colors.red),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ],
              //       )));
            },
            child: Container(
              margin: EdgeInsets.only(right: 20.0, left: 160),
              alignment: Alignment.centerRight,
              // color: Colors.amber,
              padding: const EdgeInsets.only(left: 3, right: 3),
              clipBehavior: Clip.antiAlias,
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
              child: Image.asset(
                "assets/images/three_dots.png",
                width: 24,
                height: 18,
              ),
            ),
          )
        ],
      ));
    }
    return widgets;
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
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/sync_icon.png",
                      width: 20.0,
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Sync",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
                onPressed: () {
                  // Get.to(() => EditReportForm());
                  showModalBottomSheet(
                    constraints: BoxConstraints.expand(
                        width: Get.width, height: Get.height - 80),
                    isDismissible: false,
                    enableDrag: true,
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(20.0),
                    //         topRight: Radius.circular(20.0))),
                    builder: (context) {
                      return CaptureLeadForm(
                        title: "Add new contact",
                      );
                    },
                  );

                  //);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text(
                      "Add contact",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          )
        ],
        title: Text(
          "Contacts",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Showing 340 contacts',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //Navigator.of(context).pop();
                    },
                    child: Container(
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
                          children: [
                            Image.asset(
                              "assets/images/filter.png",
                              color: Theme.of(context).primaryColor,
                              width: 20.0,
                              height: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Filter',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                // color: Colors.amber,
                child: Table(
                  textDirection: TextDirection.ltr,
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(400),
                    1: FixedColumnWidth(150),
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(165),
                    4: FixedColumnWidth(175),
                    5: FixedColumnWidth(200)
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(children: [
                      Text(
                        'Contact',
                        style: TextStyle(
                          color: Color(0x7F555770),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(
                                color: Color(0x7F555770),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.28,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              "assets/images/arrow_down.png",
                              width: 20.0,
                              height: 15.0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Visits',
                              style: TextStyle(
                                color: Color(0x7F555770),
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.28,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Image.asset(
                              "assets/images/arrow_down.png",
                              width: 20.0,
                              height: 15.0,
                            )
                          ],
                        ),
                      ),
                      Text(
                        'Date added',
                        style: TextStyle(
                          color: Color(0x7F555770),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        // color: Colors.green,
                        child: Text(
                          'Last visit',
                          style: TextStyle(
                            color: Color(0x7F555770),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Last activity',
                          style: TextStyle(
                            color: Color(0x7F555770),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.28,
                          ),
                        ),
                      )
                    ]),
                    ...getListOfTableRow(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
