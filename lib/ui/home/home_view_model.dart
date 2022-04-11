import 'package:akademi_flutter_ders3/models/response/categories_response.dart';
import 'package:akademi_flutter_ders3/models/response/category_reponse.dart';
import 'package:akademi_flutter_ders3/ui/main/main_view_model.dart';

class HomeViewModel extends MainViewModel {
  //Mainviewe ulaştığım zamn methodtlarına da ulaşmöış olurum. İHer yerde ayrı ayrı tanımlamama gerek kalmaz.
  Categories? categoryList;
  List<MealCategory>? categoriesFireList;
  init() async {
    categoryList = await repository.getCategories().catchError((error) {
      setError(error);
    });
    categoriesFireList = await firestoreService.getCategory();
    notifyListeners();
  }

  updateLikes() async {
    categoriesFireList = await firestoreService
        .getCategory()
        .catchError((error) => setError(error));
    notifyListeners();
  }
}
