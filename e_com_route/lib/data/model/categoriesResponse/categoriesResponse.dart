import 'package:e_com_route/data/model/categoriesResponse/categoryDto.dart';
import 'package:e_com_route/data/model/paginationDto.dart';

class CategoriesResponse {
  int? results;
  PaginationDto? metadata;
  List<CategoryDto>? data;

  CategoriesResponse({this.results, this.metadata, this.data});

  CategoriesResponse.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? new PaginationDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <CategoryDto>[];
      json['data'].forEach((v) {
        data!.add(new CategoryDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results'] = this.results;
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
