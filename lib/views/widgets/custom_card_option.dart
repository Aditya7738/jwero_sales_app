import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final Color outerColor;
  final Color innerColor;
  final String imagePath;
  final String label;
  const CustomCard(
      {super.key,
      required this.outerColor,
      required this.innerColor,
      required this.imagePath,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      height: Get.height * 0.25,
      width: Get.width * 0.3072,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: outerColor,
          // border: Border.all(
          //     color: const Color.fromARGB(255, 216, 216, 216)),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: innerColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                imagePath,
                width: 20.0,
                height: 20.0,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Image.asset(
                "assets/images/right_arrow.png",
                width: 20.0,
                height: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
