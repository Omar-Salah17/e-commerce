import 'package:e_com_route/domain/model/category.dart';
import 'package:e_com_route/domain/repo/CategoriesRepositry.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  CategoriesRepo repo;
  @factoryMethod
  GetCategoriesUseCase(this.repo);

  Future<List<Category>?> invoke() {
    return repo.GetCategories();
  }
}
