import 'package:dio/dio.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModule {
  @factoryMethod
  Dio getDioInstance() => Dio();

  @factoryMethod
  FlutterAppAuth getAppAuth() => const FlutterAppAuth();
}
