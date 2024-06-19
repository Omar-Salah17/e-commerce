import 'package:e_com_route/domain/model/brand.dart';

abstract class BrandsRepositry {
  Future<List<Brand>?> getBrands(); 
}
