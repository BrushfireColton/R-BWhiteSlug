import 'package:client/src/services/vendor_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: VendorService)
class VendorServiceImpl extends VendorService {
  final Dio httpClient;

  VendorServiceImpl(this.httpClient);
  @override
  Future<String> getVendors() async {
    return 'hello world';
  }
}
