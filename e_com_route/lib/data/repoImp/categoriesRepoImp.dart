import 'package:e_com_route/data/dataSourceContract/categoriesDataSource.dart';
import 'package:e_com_route/domain/model/category.dart';
import 'package:e_com_route/domain/repo/CategoriesRepositry.dart';

import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepositryImp extends CategoriesRepo {
  CategoriesDataSource onlineDataSource;
  @factoryMethod
  CategoriesRepositryImp(this.onlineDataSource);
  @override
  Future<List<Category>?> GetCategories() {
    return onlineDataSource.GetCategories();
  }
}
