import 'package:client/src/core/services/http_service.dart';

abstract class VendorService extends HttpService {
  VendorService(super.serviceConfig, super.dio);

  Future<String> getVendors();
}
