import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

void setup() {
  final dio = Dio()
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
      compact: true,
      maxWidth: 90,
      logPrint: (object) {
        if (object.toString().contains('ERROR')) {
          if (kDebugMode) {
            print('\x1B[31m$object\x1B[0m');
          } // Red color for errors
        } else if (object.toString().contains('Request')) {
          if (kDebugMode) {
            print('\x1B[34m$object\x1B[0m');
          } // Blue color for requests
        } else if (object.toString().contains('Response')) {
          if (kDebugMode) {
            print('\x1B[32m$object\x1B[0m');
          } // Green color for responses
        } else {
          if (kDebugMode) {
            print(object);
          } // Default color for other logs
        }
      },
    ));

  getIt.registerLazySingleton<Dio>(() => dio);
}
