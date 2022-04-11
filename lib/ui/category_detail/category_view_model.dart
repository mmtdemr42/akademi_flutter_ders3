import 'package:akademi_flutter_ders3/models/response/category_reponse.dart';
import 'package:akademi_flutter_ders3/models/response/meal_detail_response.dart';
import 'package:akademi_flutter_ders3/models/response/meal_list_response.dart';
import 'package:akademi_flutter_ders3/ui/main/main_view_model.dart';

class CategoryDetailViewModel extends MainViewModel {
  MealListResponse? mealList;
  MealDetailResponse? mealDetailList;

  initialize(String name) async {
    if (mealList == null) {
      runBusyFuture(getMealListByCategory(name));
    }
  }

  getMealListByCategory(String name) async {
    mealList = await repository.getMealListByCategory(name);
  }
}
