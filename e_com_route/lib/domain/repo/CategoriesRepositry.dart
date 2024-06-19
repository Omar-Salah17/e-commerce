import 'package:e_com_route/domain/model/category.dart';

abstract class CategoriesRepo {
  // ignore: non_constant_identifier_names
  Future<List<Category>?> GetCategories();
}
