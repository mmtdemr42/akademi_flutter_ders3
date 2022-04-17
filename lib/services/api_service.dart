import 'package:akademi_flutter_ders3/models/response/area_list_response.dart';
import 'package:akademi_flutter_ders3/models/response/categories_response.dart';
import 'package:akademi_flutter_ders3/models/response/meal_detail_list_response.dart';
import 'package:akademi_flutter_ders3/models/response/meal_list_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("categories.php")
  Future<Categories> getCategories();


  @GET("filter.php")
  Future<MealListResponse> getMealListByCategory(@Query("c") String category);

   @GET("filter.php")
 Future<MealListResponse> getMealsByArea(@Query("a") String area);

  @GET("search.php")
  Future<MealDetailListResponse> searchMeals(@Query("s") String name);

   @GET("list.php")
 Future<AreaListReponse> getAreaList(@Query("a") String area);



}
