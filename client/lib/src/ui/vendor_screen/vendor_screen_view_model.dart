import 'package:empire/empire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'dart:math';

@injectable
class VendorScreenViewModel extends EmpireViewModel {
  final selectedBackgroundImage = EmpireNullableStringProperty();
  final vendorGreetings = EmpireNullableStringProperty();
  dynamic backgroundImage;
  dynamic greeting;
  final backgroundImageMap = EmpireMapProperty({
    'Ada': 'assets/images/ada.png',
    'Timothy': 'assets/images/timothy.png',
    'Banshee': 'assets/images/banshee.png',
    'Shax': 'assets/images/shax.png',
    'Amanda': 'assets/images/amanda.png',
    'Zavala': 'assets/images/zavala.png',
    'Default': 'assets/images/The_Other_Half.png'
  });

  final greetings = EmpireMapProperty({
    'Ada': 'The Loom awaits, Guardian.',
    'Timothy': '  ',
    'Banshee':
        'Had these with us at Twilight Gap. Went pretty badly. Not the guns fault.',
    'Shax': 'Heh. You\'re crushing them. Send them home crying.',
    'Amanda':
        'Those space hogs think were just gonna lay down after everything. Makes me mad as hell!',
    'Zavala': 'Hello Guardian',
    'Default': 'HAHA Shep doesnt have me'
  });

  @override
  Iterable<EmpireProperty> get empireProps =>
      [backgroundImageMap, selectedBackgroundImage, vendorGreetings];

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

  void addUser() {
    const newUser = 'TheOtherHalf';
    const newImage = 'assets/images/The_Other_Half.png';
    backgroundImageMap.add(newUser, newImage);
  }

  String provideVendorGreeting(vendor) {
    if (vendor.isEmpty) {
      greeting = greetings['Default']!;
    } else {
      greeting = greetings[vendor]!;
    }
    return greeting;
  }
}
