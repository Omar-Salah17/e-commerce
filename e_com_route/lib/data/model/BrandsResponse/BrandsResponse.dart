import 'package:e_com_route/data/model/BrandsResponse/brandDto.dart';
import 'package:e_com_route/data/model/paginationDto.dart';

class BrandResponse {
  int? results;
  PaginationDto? metadata;
  List<BrandDto>? data;

  BrandResponse({this.results, this.metadata, this.data});

  BrandResponse.fromJson(Map<String, dynamic> json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? new PaginationDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = <BrandDto>[];
      json['data'].forEach((v) {
        data!.add(new BrandDto.fromJson(v));
      });
    }
  }
}
