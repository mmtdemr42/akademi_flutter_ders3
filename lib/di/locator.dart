import 'package:akademi_flutter_ders3/repository/repository.dart';
import 'package:akademi_flutter_ders3/services/api_service.dart';
import 'package:akademi_flutter_ders3/services/push_notification_service.dart';
import 'package:akademi_flutter_ders3/utils/error/default_error_factory.dart';
import 'package:akademi_flutter_ders3/utils/error/error_factory.dart';
import 'package:akademi_flutter_ders3/utils/error/error_seperated.dart';
import 'package:akademi_flutter_ders3/utils/network_util.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //NETWORK
  locator.registerLazySingleton<Dio>(() => NetworkUtil().getDio());
  locator.registerLazySingleton(() => ApiService(locator.get()));
  locator.registerLazySingleton(() => Repository(locator.get(), locator.get()));
  locator.registerLazySingleton(() => PushNotificationService());

  //ERROR
  locator.registerLazySingleton(() => ErrorFactory);
  locator.registerLazySingleton(() => DefaultErrorFactory());
  locator.registerLazySingleton(() => ErrorSeparator(locator.get()));
}
