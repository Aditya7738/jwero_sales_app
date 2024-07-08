import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';
import 'package:jwero_sales_app/views/pages/edit_report.dart';
import 'package:jwero_sales_app/views/pages/session_history.dart';
import 'package:jwero_sales_app/views/widgets/edit_report_row.dart';
import 'package:jwero_sales_app/views/widgets/select_customer_bottomsheet.dart';
import 'package:jwero_sales_app/views/widgets/select_product_bottomsheet.dart';

class SessionReport extends StatefulWidget {
  TabController tabController;
  SessionReport({super.key, required this.tabController});

  @override
  State<SessionReport> createState() => _SessionReportState();
}

class _SessionReportState extends State<SessionReport>
    with SingleTickerProviderStateMixin {
  TextEditingController textEditingController = TextEditingController();

  //DateTime selectedDate = DateTime.now();

  //late TabController tabController;

  List<Tab> tabs = [
    Tab(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Viewed',
              style: TextStyle(
                //   color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
            Container(
              width: 29,
              height: 17,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                '18',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF555770),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        //  padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add to cart',
              style: TextStyle(
                //   color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
            Container(
              width: 29,
              height: 17,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF555770),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wishlist',
              style: TextStyle(
                //   color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
            Container(
              width: 29,
              height: 17,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                '4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF555770),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Tab(
      child: Container(
        //  padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ordered',
              style: TextStyle(
                //   color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.28,
              ),
            ),
            Container(
              width: 29,
              height: 17,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF555770),
                  fontSize: 11,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ];

  List<Widget> tabBody = [
    Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0x19555770)),
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/jewellery_1.png",
                      width: 200.0,
                      height: 200.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Exlusive diamond ring',
                      style: TextStyle(
                        color: Color(0xFF091E42),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '₹ 9999',
                      style: TextStyle(
                        color: Color(0xFF091E42),
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.05,
                      ),
                    )
                  ]),
            );
          },
        )),
    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(
        'No products ordered',
        style: TextStyle(
          color: Color(0x7F555770),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 0,
          letterSpacing: -0.28,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(
        'No products ordered',
        style: TextStyle(
          color: Color(0x7F555770),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 0,
          letterSpacing: -0.28,
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(
        'No products ordered',
        style: TextStyle(
          color: Color(0x7F555770),
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
          height: 0,
          letterSpacing: -0.28,
        ),
      ),
    )
  ];

  @override
  void initState() {
    super.initState();

    // tabController = TabController(length: 2, vsync: this);
  }

  TextEditingController _birthdateController = TextEditingController();
  TextEditingController _anniversaryDateController = TextEditingController();

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
            padding: const EdgeInsets.only(right: 8.0, top: 5.0),
            child: TextButton(
                onPressed: () {
                  Get.to(() => EditReportForm());
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
                        Icons.edit,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Edit report',
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
                )

                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     Icon(
                //       Icons.edit,
                //       color: Theme.of(context).primaryColor,
                //     ),
                //     SizedBox(
                //       width: 10.0,
                //     ),
                //     Text(
                //       "Save",
                //       style: TextStyle(
                //           color: Theme.of(context).primaryColor,
                //           fontSize: 16.sp,
                //           fontWeight: FontWeight.bold),
                //     ),
                //   ],
                // )
                ),
          )
        ],
        title: Text(
          "Session report",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Scrollbar(
          child: Container(
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 40.0),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: Get.width * 0.55,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 24),
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
                                  'Contact details',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 19.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                    letterSpacing: -0.32,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/images/profile_image.png",
                                          width: 35.0,
                                          height: 35.0,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Rahul Mishra',
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                            letterSpacing: -0.32,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Get.to(() => CaptureLeadForm(
                                                title: "Add new contact"));
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 12),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.add),
                                                Text(
                                                  'New customer',
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                              constraints:
                                                  BoxConstraints.expand(
                                                      width: Get.width,
                                                      height: Get.height - 80),
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
                                                return SelectCustomerBottomSheet();
                                              },
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16, vertical: 12),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.add),
                                                Text(
                                                  'Select customer',
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontSize: 16,
                                                    fontFamily: 'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                EditReportRow(
                                  questionText: 'Phone number',
                                  ansText: '+91 9967388927',
                                  ansTextColor: Theme.of(context).primaryColor,
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                EditReportRow(
                                  questionText: 'Email address',
                                  ansText: 'rahulmishra@gmail.com',
                                  ansTextColor: Theme.of(context).primaryColor,
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                              width: Get.width * 0.55,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 24),
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
                                    'Additional info',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 19.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  EditReportRow(
                                    questionText: 'Beverages offered',
                                    ansText: 'Tea',
                                    ansTextColor: Color(0xFF616ADA),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  EditReportRow(
                                    questionText: 'Complimentary gifts',
                                    ansText: 'Pouch',
                                    ansTextColor: Color(0xFF616ADA),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                        width: Get.width * 0.4,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                              'Visit summary',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 19.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.32,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Date',
                              ansText: '12/08/2024',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Time spent',
                              ansText: '24 mins',
                              ansTextColor: Colors.red,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Products viewed',
                              ansText: '12',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Add to cart',
                              ansText: '1',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Wishlist',
                              ansText: '2',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Ordered',
                              ansText: '1',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Method',
                              ansText: 'Pay at counter',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            EditReportRow(
                              questionText: 'Amount',
                              ansText: '₹ 5,999',
                              ansTextColor: Theme.of(context).primaryColor,
                            ),
                          ],
                        )),
                  ],
                ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product details',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 19.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.32,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  constraints: BoxConstraints.expand(
                                      width: Get.width,
                                      height: Get.height - 80),
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
                                    return SelectProductBottomSheet();
                                  },
                                );
                              },
                              child: Container(
                                // width: 179,
                                // height: 43,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
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
                                    Icon(Icons.add),
                                    Text(
                                      'Add products viewed',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 18.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        // const SizedBox(height: 10),

                        Container(
                          width: Get.width * 0.40,
                          child: TabBar(
                            controller: widget.tabController,
                            tabs: tabs,
                            //  labelColor: ,
                            indicatorColor: Theme.of(context).primaryColor,
                            labelColor: Theme.of(context).primaryColor,
                            unselectedLabelColor: Color(0x7F555770),
                            indicatorSize: TabBarIndicatorSize.tab,
                          ),
                        ),

                        Container(
                          width: Get.width - 60,
                          height: 300.0,
                          child: TabBarView(
                            children: tabBody,
                            controller: widget.tabController,
                          ),
                        )
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Notes',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 19.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: -0.32,
                              ),
                            ),
                            Container(
                              // width: 179,
                              // height: 43,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
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
                                  Icon(Icons.add),
                                  Text(
                                    'Add note',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 18.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 40),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 24),
                            // decoration: BoxDecoration(
                            //     border: Border.all(
                            //         color: Colors.grey, style: BorderStyle.solid),
                            //     borderRadius: BorderRadius.circular(10.0)),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF7F7FD),
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 28,
                                        height: 28,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFE9EFFF),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9999),
                                          ),
                                        ),
                                        child: Text(
                                          'JC',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 10,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'Jwero care',
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                          letterSpacing: -0.28,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        '-  Today',
                                        style: TextStyle(
                                          color: Color(0x7F555770),
                                          fontSize: 14,
                                          fontStyle: FontStyle.italic,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.28,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  SizedBox(
                                    width: 1081,
                                    child: Text(
                                      'Hello sir!, \n\nGreetings from jwero, you need to integrate the tag manager as well, please connect the tag manager from \nIntegrations >> Google >> Tag manager \n\nThen go settings & select GTM and save it. \nPlease check the below screenshot for further details',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.28,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x66000000),
                                              blurRadius: 1,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: FlutterLogo(),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x66000000),
                                              blurRadius: 1,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: FlutterLogo(),
                                      ),
                                      SizedBox(
                                        width: 20.0,
                                      ),
                                      Container(
                                        width: 50,
                                        height: 50,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          shadows: [
                                            BoxShadow(
                                              color: Color(0x66000000),
                                              blurRadius: 1,
                                              offset: Offset(0, 0),
                                              spreadRadius: 0,
                                            )
                                          ],
                                        ),
                                        child: FlutterLogo(),
                                      )
                                    ],
                                  )
                                ]))
                      ],
                    )),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
