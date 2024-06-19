import 'package:e_com_route/data/dataSourceContract/brandsDatasource.dart';
import 'package:e_com_route/domain/model/brand.dart';
import 'package:e_com_route/domain/repo/BrandsRepositry.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandsRepositry)
class Brandsrepositryimp extends BrandsRepositry {
  BrandsDataSource brandsDataSource;
  @factoryMethod Brandsrepositryimp(this.brandsDataSource);

  @override
  Future<List<Brand>?> getBrands() {
    return brandsDataSource.getBrands();
  }
}
