import 'package:get/get.dart';
import 'package:jwero_sales_app/model/product_model.dart';

class ProductBottomSheetController extends GetxController {
  var _productsMap = {
    ProductModel("ring1", "asfsa"): false,
    ProductModel("ring2", "rehdfn"): false,
    ProductModel("ring3", "sdgshw"): false,
  }.obs;

  get productsMap => _productsMap.entries.map((e) => e.key).toList();

  void toggle(ProductModel productModel) {
    _productsMap[productModel] = !(_productsMap[productModel] ?? true);
  }

  get selectedProducts => _productsMap.entries
      .where((element) => element.value)
      .map((e) => e.key)
      .toList();
}
