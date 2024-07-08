import 'package:get/get.dart';

class CustomerBottomSheetController extends GetxController {
  // RxString rxSelectedCustomer = ''.obs;

  String _selectedCustomer = "radioButton 1";

  String get selectedCustomer => _selectedCustomer;

  void updateSelectedCustomer(String customer) {
    _selectedCustomer = customer;
    update();
  }
}
