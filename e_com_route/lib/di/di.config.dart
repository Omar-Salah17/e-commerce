// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/ApiManager.dart' as _i3;
import '../data/dataSourceContract/brandsDatasource.dart' as _i4;
import '../data/dataSourceContract/categoriesDataSource.dart' as _i8;
import '../data/dataSourceImp/brandsOnlineDataSource.dart' as _i5;
import '../data/dataSourceImp/CateforiesOnlineDataSource.dart' as _i9;
import '../data/repoImp/brandsRepoImp.dart' as _i7;
import '../data/repoImp/categoriesRepoImp.dart' as _i11;
import '../domain/repo/BrandsRepositry.dart' as _i6;
import '../domain/repo/CategoriesRepositry.dart' as _i10;
import '../domain/usecase/GetBrandsUseCase.dart' as _i12;
import '../domain/usecase/getCategoriesUseCase.dart' as _i13;
import '../UI/home/homeTab/home_tab_view_model.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(_i3.ApiManager());
    gh.factory<_i4.BrandsDataSource>(
        () => _i5.BrandsOnlineDataSource(get<_i3.ApiManager>()));
    gh.factory<_i6.BrandsRepositry>(
        () => _i7.Brandsrepositryimp(get<_i4.BrandsDataSource>()));
    gh.factory<_i8.CategoriesDataSource>(
        () => _i9.CategoriesOnlineDataSource(get<_i3.ApiManager>()));
    gh.factory<_i10.CategoriesRepo>(
        () => _i11.CategoriesRepositryImp(get<_i8.CategoriesDataSource>()));
    gh.factory<_i12.GetBrandsUseCase>(
        () => _i12.GetBrandsUseCase(get<_i6.BrandsRepositry>()));
    gh.factory<_i13.GetCategoriesUseCase>(
        () => _i13.GetCategoriesUseCase(get<_i10.CategoriesRepo>()));
    gh.factory<_i14.HomeTabViewModel>(() => _i14.HomeTabViewModel(
          get<_i13.GetCategoriesUseCase>(),
          get<_i12.GetBrandsUseCase>(),
        ));
    return this;
  }
}
