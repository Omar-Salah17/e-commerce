import 'package:e_com_route/domain/model/category.dart';

abstract class CategoriesDataSource {
  Future<List<Category>?> GetCategories();
}
