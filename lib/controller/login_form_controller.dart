import 'package:get/get.dart';

class LoginFormController extends GetxController {
  RxBool rxIsPasswordHidden = true.obs;

  void updateObscure(bool isObscureText) {
    rxIsPasswordHidden.value = isObscureText;
  }
}
