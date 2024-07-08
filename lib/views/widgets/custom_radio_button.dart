import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jwero_sales_app/controller/customer_bottomsheet_controller.dart';
import 'package:jwero_sales_app/views/widgets/select_customer_bottomsheet.dart';

class CustomRadioButton extends StatelessWidget {
  final String value;
  //final String title;
  const CustomRadioButton({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerBottomSheetController>(
      builder: (controller) {
        return RadioMenuButton(
            toggleable: true,
            value: value,
            groupValue: controller.selectedCustomer,
            onChanged: (value) {
              controller.updateSelectedCustomer(value!);
            },
            style: ButtonStyle(
                iconColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor)),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 64,
                    height: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xFFE9EFFF), shape: BoxShape.circle),
                    child: Text(
                      'DK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Santosh Kumar',
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
                        '+91 996 730 0766',
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
            ));
      },
    );
  }
}
