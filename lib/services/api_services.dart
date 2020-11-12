import 'package:http/http.dart' as http;
import 'package:shop_up/models/product.dart';

class ApiServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(
        'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
    if (response.statusCode == 200) {
      return productFromJson(response.body);
    } else {
      return null;
    }
  }
}
