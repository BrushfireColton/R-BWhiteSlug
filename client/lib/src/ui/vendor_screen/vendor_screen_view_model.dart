import 'package:empire/empire.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'dart:math';

@injectable
class VendorScreenViewModel extends EmpireViewModel {
  final selectedBackgroundImage = EmpireNullableStringProperty();
  dynamic backgroundImage;
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

  String determineImage(selectedImage) {
    if (selectedImage.isNull) {
      backgroundImage = backgroundImageMap['Default']!;
    } else {
      backgroundImage = selectedBackgroundImage.value!;
    }
    return backgroundImage;
  }

  addUser() {
    const newUser = 'TheOtherHalf';
    const newImage = 'assets/images/The_Other_Half.png';
    backgroundImageMap.add(newUser, newImage);
  }
}
