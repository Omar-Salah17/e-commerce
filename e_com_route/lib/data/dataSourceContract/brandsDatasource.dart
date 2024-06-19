import 'package:e_com_route/domain/model/brand.dart';

abstract class BrandsDataSource {
  Future<List<Brand>?> getBrands();
}
