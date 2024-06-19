import 'package:e_com_route/domain/model/brand.dart';
import 'package:e_com_route/domain/model/category.dart';
import 'package:e_com_route/domain/usecase/GetBrandsUseCase.dart';
import 'package:e_com_route/domain/usecase/getCategoriesUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabState> {
  GetCategoriesUseCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  @factoryMethod
  HomeTabViewModel(this.getCategoriesUseCase, this.getBrandsUseCase)
      : super(Loading());

  void initPage() async {
    emit(Loading());
    var categories = getCategoriesUseCase.invoke();
    try {
      var categories = await getCategoriesUseCase.invoke();
      var brands = await getBrandsUseCase.invoke();
      emit(success(categories, brands));
    } catch (e) {
      emit(Error(e.toString()));
    }
  }
}

sealed class HomeTabState {}

class Loading extends HomeTabState {}

class Error extends HomeTabState {
  String? msg;
  Error(this.msg);
}

class success extends HomeTabState {
  List<Category>? categories;
  List<Brand>? brands; 
  success(this.categories , this.brands);
}
