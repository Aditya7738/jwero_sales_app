import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  RxString selectedDropDownOptionValue = ''.obs;

  void updateSelectedDropDownOptionValue(String dropDownOptionValue) {
    selectedDropDownOptionValue.value = dropDownOptionValue;
  }
}
