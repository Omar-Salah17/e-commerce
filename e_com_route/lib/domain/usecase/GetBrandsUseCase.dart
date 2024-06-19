import 'package:e_com_route/domain/model/brand.dart';
import 'package:e_com_route/domain/repo/BrandsRepositry.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetBrandsUseCase {
  BrandsRepositry brandsRepositry;
   @factoryMethod GetBrandsUseCase(this.brandsRepositry);
  Future<List<Brand>?> invoke() {
    return brandsRepositry.getBrands();
  }
}
