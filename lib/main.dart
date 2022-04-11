import 'package:akademi_flutter_ders3/constants/constants.dart';
import 'package:akademi_flutter_ders3/di/locator.dart';
import 'package:akademi_flutter_ders3/ui/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Constants.backroundColor,
        primarySwatch: Colors.green,
      ),
      home: SplashView(),
    );
  }
}
