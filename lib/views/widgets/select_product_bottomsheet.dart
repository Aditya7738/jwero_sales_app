import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/controller/product_bottomsheet_controller.dart';
import 'package:jwero_sales_app/model/contact_model.dart';
import 'package:jwero_sales_app/model/product_model.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';

class SelectProductBottomSheet extends StatelessWidget {
  SelectProductBottomSheet({super.key});

  ProductBottomSheetController productBottomSheetController =
      Get.put(ProductBottomSheetController());

  List<ProductModel> productsMap = [
    ProductModel("ring1", "asfsa"),
    ProductModel("ring2", "rehdfn"),
    ProductModel("ring3", "sdgshw"),
  ];

  List<ProductModel> selectedProducts = <ProductModel>[];

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
            "Select products",
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
                SizedBox(
                  height: Get.height * 0.624,
                  width: Get.width - 40,
                  child: ListView.builder(
                    itemCount: productBottomSheetController.productsMap.length,
                    itemBuilder: (context, index) {
                      ProductModel productModel = productsMap[index];

                      return productItem(
                          productModel.name, productModel.code, index, context);
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget productItem(
      String name, String code, int index, BuildContext context) {
    return Obx(
      () => CheckboxMenuButton(
          style: ButtonStyle(
              iconColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor),
              shape: MaterialStateProperty.all(
                  // OutlinedBorder.lerp(a, b, t)
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ))),
          value: productBottomSheetController.selectedProducts
              .contains(productBottomSheetController.productsMap[index]),
          onChanged: (value) => productBottomSheetController
              .toggle(productBottomSheetController.productsMap[index]),
          // onChanged: (value) {
          //   print("CHECKBOX $index VALUE $value");
          //   if (value != null) {
          //     productBottomSheetController.updateSelectedProduct(value);
          //   } else {
          //     productBottomSheetController.updateSelectedProduct(false);
          //   }

          //   //isSelected = !isSelected;

          //   if (productBottomSheetController.selectedProduct.value == true) {
          //     selectedProducts.add(ProductModel(name, code));
          //   } else if (productBottomSheetController.selectedProduct.value ==
          //       false) {
          //     selectedProducts.removeWhere((element) => element.name == name);
          //   }
          // },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Container(
                //   width: 64,
                //   height: 48,
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       color: Color(0xFFE9EFFF), shape: BoxShape.circle),
                //   child: Text(
                //     'DK',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Theme.of(context).primaryColor,
                //       fontSize: 14,
                //       fontFamily: 'Inter',
                //       fontWeight: FontWeight.w500,
                //       height: 0,
                //     ),
                //   ),
                // ),

                Image.asset(
                  "assets/images/profile_image.png",
                  width: 45.0,
                  height: 45.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFF091E42),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.32,
                      ),
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: Color(0x7F555770),
                        fontSize: 14,
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
          )),
    );
  }
}
