import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/views/pages/edit_report.dart';
import 'package:jwero_sales_app/views/pages/home_screen.dart';
import 'package:jwero_sales_app/views/widgets/session_report_bottomsheet.dart';

class SessionsHisotryPage extends StatefulWidget {
  const SessionsHisotryPage({super.key});

  @override
  State<SessionsHisotryPage> createState() => _SessionsHisotryPageState();
}

class _SessionsHisotryPageState extends State<SessionsHisotryPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  List<TableRow> getListOfTableRow(BuildContext context) {
    List<TableRow> widgets = <TableRow>[];

    for (var i = 0; i < 3; i++) {
      widgets.add(TableRow(
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                constraints: BoxConstraints.expand(
                    width: Get.width, height: Get.height - 20),
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
                  return SessionReport(tabController: tabController);
                },
              );
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
          Text(
            'Showroom',
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
            alignment: Alignment.center,
            child: Text(
              '8',
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
              '12 m',
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
          getOrderStatus(i)
        ],
      ));
    }
    return widgets;
  }

  Widget getOrderStatus(int index) {
    if (index == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Container(
          alignment: Alignment.center,

          padding: const EdgeInsets.symmetric(vertical: 4),
          //  clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF5FFF9),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 0.80,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            'Order',
            style: TextStyle(
              color: Color(0xFF0EAD1E),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
              letterSpacing: -0.28,
            ),
          ),
        ),
      );
    } else if (index == 1) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Container(
          alignment: Alignment.center,

          padding: const EdgeInsets.symmetric(vertical: 4),
          //  clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFE9EFFF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 0.80,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            'Add to cart',
            style: TextStyle(
              color: Color(0xFF616ADA),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
              letterSpacing: -0.28,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Container(
          alignment: Alignment.center,

          padding: const EdgeInsets.symmetric(vertical: 4),
          //  clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFF7F7FD),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: [
              BoxShadow(
                color: Color(0x66000000),
                blurRadius: 0.80,
                offset: Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            'Viewed',
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
      );
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: InkWell(
          onTap: () {
            Get.to(HomeScreen());
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
                  Get.to(() => EditReportForm());
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
                      "Add session",
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
          "All sessions",
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
                    'Showing 24 sessions',
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
                    1: FixedColumnWidth(175),
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(200),
                    4: FixedColumnWidth(150),
                    5: FixedColumnWidth(165)
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
                      Text(
                        'Visit date',
                        style: TextStyle(
                          color: Color(0x7F555770),
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          letterSpacing: -0.28,
                        ),
                      ),
                      Text(
                        'Location',
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
                              'Product viewed',
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
                        // color: Colors.green,
                        child: Text(
                          'Time spent',
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
                        alignment: Alignment.center,
                        child: Text(
                          'Status',
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
