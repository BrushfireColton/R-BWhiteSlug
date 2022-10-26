import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class ThirdPartyModule {
  @factoryMethod
  Dio getDioInstance() => Dio();
}
