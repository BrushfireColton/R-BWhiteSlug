import 'package:client/src/services/vendor_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: VendorService)
class VendorServiceImpl extends VendorService {
  VendorServiceImpl(super.serviceConfig, super.dio);

  @override
  Future<String> getVendors() async {
    final response = await get<String>('/vendor/all');
    return response.data ?? 'no data';
  }
}
