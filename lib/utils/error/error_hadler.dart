
import 'package:akademi_flutter_ders3/utils/error/error.dart';

extension ErrorHandle on DefaultError {
  String handle() => this.when(
      unknownError: (error, stackTrace) => error,
      apiError: (dynamic error, stacktrace, code, message) => message,
      businessError: (int code, dynamic error, StackTrace stackTrace) => error.toString());
}