import 'dart:convert';

import 'package:e_com_route/data/model/BrandsResponse/BrandsResponse.dart';
import 'package:e_com_route/data/model/categoriesResponse/categoriesResponse.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@singleton
@injectable
class ApiManager {
  static const String baseUrl = 'ecommerce.routemisr.com';
  Future<CategoriesResponse> getCategories() async {
    var url = Uri.https(baseUrl, "api/v1/categories");
    var response = await http.get(url);
    var categoriesResponse =
        CategoriesResponse.fromJson(jsonDecode(response.body));
    return categoriesResponse;
  }

  Future<BrandResponse> getBrands() async {
    var url = Uri.http(baseUrl, "api/v1/brands");
    var response = await http.get(url);
    var brandsResponse = BrandResponse.fromJson(jsonDecode(response.body));
    return brandsResponse; 
  }
}
