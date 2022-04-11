import 'package:akademi_flutter_ders3/ui/main/main_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  init(BuildContext context) {
    Future<void>.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const MainView()));
    });
  }
}
