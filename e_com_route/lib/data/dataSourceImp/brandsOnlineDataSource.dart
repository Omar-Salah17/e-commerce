import 'package:e_com_route/data/ApiManager.dart';
import 'package:e_com_route/data/dataSourceContract/brandsDatasource.dart';
import 'package:e_com_route/domain/model/brand.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BrandsDataSource)
class BrandsOnlineDataSource extends BrandsDataSource {
  ApiManager apiManager;
  @factoryMethod BrandsOnlineDataSource(this.apiManager);

  @override
  Future<List<Brand>?> getBrands() async {
    var response = await apiManager.getBrands();
    response.data?.map((brandDto) => brandDto.toBrand()).toList();
  }
}
