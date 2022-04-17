import 'package:akademi_flutter_ders3/models/request/area_request.dart';
import 'package:akademi_flutter_ders3/models/response/area_list_response.dart';
import 'package:akademi_flutter_ders3/models/response/categories_response.dart';
import 'package:akademi_flutter_ders3/models/response/category_reponse.dart';
import 'package:akademi_flutter_ders3/ui/main/main_view_model.dart';

class HomeViewModel extends MainViewModel {
  //Mainviewe ulaştığım zamn methodtlarına da ulaşmöış olurum. İHer yerde ayrı ayrı tanımlamama gerek kalmaz.
  Categories? categoryList;
  List<MealCategory>? categoriesFireList;
  late AreaListReponse areaList;

  init() async {
     await getAreaList("American");

    categoryList = await repository.getCategories().catchError((error) {
      setError(error);
    });
    categoriesFireList = await firestoreService.getCategory();
    notifyListeners();
  }

  getAreaList(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository.getAreaList(areaRequest.a!).then((areaList) {
      this.areaList = areaList;
      notifyListeners();
    }).catchError((error) {
      setError(error);
    });
  }


  updateLikes() async {
    categoriesFireList = await firestoreService
        .getCategory()
        .catchError((error) => setError(error));
    notifyListeners();
  }
}
