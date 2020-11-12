import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:shop_up/models/product.dart';
import 'package:shop_up/services/api_services.dart';

class ProductController extends GetxController {
  var productList = List<Product>().obs;

  @override
  void onInit() {
    fetchproducts();
    super.onInit();
  }

  void fetchproducts() async {
    var product = await ApiServices.fetchProducts();
    if (product != null) {
      productList.assignAll(product);
    }
  }
}
