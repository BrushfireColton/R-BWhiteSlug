import 'package:empire/empire.dart';
import 'package:injectable/injectable.dart';

@injectable
class VendorScreenViewModel extends EmpireViewModel {
  final selectedBackgroundImage = EmpireNullableStringProperty();
  final backgroundImageMap = EmpireMapProperty({
    'Ada': 'assets/images/ada.png',
    'Timothy': 'assets/images/timothy.png',
    'Banshee': 'assets/images/banshee.png',
    'Shax': 'assets/images/shax.png',
    'Amanda': 'assets/images/amanda.png',
    'Zavala': 'assets/images/zavala.png',
    'Default': 'assets/images/The_Other_Half.png'
  });

  @override
  Iterable<EmpireProperty> get empireProps =>
      [backgroundImageMap, selectedBackgroundImage];

  void updateUI(vendorName) {
    selectedBackgroundImage(backgroundImageMap[vendorName]);
  }
}
