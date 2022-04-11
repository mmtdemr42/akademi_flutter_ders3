import 'package:akademi_flutter_ders3/di/locator.dart';
import 'package:akademi_flutter_ders3/repository/repository.dart';
import 'package:akademi_flutter_ders3/services/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final Repository repository = locator<Repository>();
  FirestoreService firestoreService = FirestoreService();

  int _currentTabIndex = 0;
  int get currentTabIndex => _currentTabIndex;

  bool _reverse = false;
  bool get reverse => _reverse;

  void setTabIndex(int value) {
    if (value < _currentTabIndex) {
      _reverse = true;
    }
    _currentTabIndex = value;
    notifyListeners();
  }
}
