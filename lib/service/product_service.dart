import 'dart:convert';
import 'package:ampersand_project/model/product.dart';
import 'package:http/http.dart' as http;

class ProductService {
  final String _baseUrl = 'https://api.restful-api.dev/objects';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
