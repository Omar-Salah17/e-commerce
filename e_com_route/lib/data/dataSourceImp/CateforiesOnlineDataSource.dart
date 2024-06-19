import 'package:e_com_route/data/ApiManager.dart';
import 'package:e_com_route/data/dataSourceContract/categoriesDataSource.dart';
import 'package:e_com_route/data/model/categoriesResponse/categoryDto.dart';

import 'package:e_com_route/domain/model/category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesDataSource)
class CategoriesOnlineDataSource extends CategoriesDataSource {
  final ApiManager apiManager;

  @factoryMethod
  CategoriesOnlineDataSource(this.apiManager);

  @override
  Future<List<Category>?> GetCategories() async {
    var response = await apiManager.getCategories();
    return response.data?.map((catDto) => catDto.toCategory()).toList();
  }
}
