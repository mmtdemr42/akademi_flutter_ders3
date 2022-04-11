import 'package:akademi_flutter_ders3/constants/constants.dart';
import 'package:akademi_flutter_ders3/ui/splash/splash_view_model.dart';
import 'package:flutter/material.dart';
import 'package:akademi_flutter_ders3/widget/splash.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.init(
        context,
      ),
      builder: (context, model, child) => Splash(
        backgroundColor: Constants.backroundColor,
        loaderColor: Constants.primaryColor,
        image: Image.asset(
          "assets/profile.png",
        ),
        photoSize: 100,
        title: Text(
          "Food App",
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
