import 'package:akademi_flutter_ders3/models/response/area_list_response.dart';
import 'package:akademi_flutter_ders3/models/response/categories_response.dart';
import 'package:akademi_flutter_ders3/models/response/meal_detail_list_response.dart';
import 'package:akademi_flutter_ders3/models/response/meal_list_response.dart';
import 'package:akademi_flutter_ders3/services/api_service.dart';
import 'package:akademi_flutter_ders3/utils/error/error_hadler.dart';
import 'package:akademi_flutter_ders3/utils/error/error_seperated.dart';



class Repository {
  final ApiService _apiService;
  final ErrorSeparator _errorFactory;

  Repository(this._apiService, this._errorFactory);

  Future<Categories> getCategories() async {
    return await _apiService.getCategories().catchError((error) => throw _errorFactory.createError(error, StackTrace.current).handle());
  }

  Future<MealDetailListResponse> searchMeals(String name) async {
    return await _apiService.searchMeals(name).catchError((error) =>_errorFactory.createError(error, StackTrace.current).handle());
  }

  Future<MealListResponse> getMealListByCategory(String name) async {
    return await _apiService
        .getMealListByCategory(name)
        .catchError((error) => throw _errorFactory.createError(error, StackTrace.current).handle());
  }


  Future<AreaListReponse> getAreaList(String area) async {
  return await _apiService
      .getAreaList(area)
      .catchError((error) => throw _errorFactory.createError(error, StackTrace.current).handle());
}

 Future<MealListResponse> getMealsByArea(String area) async {
 return await _apiService
     .getMealsByArea(area)
     .catchError((error) => throw _errorFactory.createError(error, StackTrace.current).handle());
}



}
