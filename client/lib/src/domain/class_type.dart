import 'package:equatable/equatable.dart';

class ClassType extends Equatable {
  final int value;
  final String description;

  const ClassType(this.value, this.description);

  static ClassType titan = const ClassType(0, 'Titan');
  static ClassType hunter = const ClassType(1, 'Hunter');
  static ClassType warlock = const ClassType(2, 'Warlock');

  static ClassType fromInt(int value) {
    switch (value) {
      case 0:
        return ClassType.titan;
      case 1:
        return ClassType.hunter;
      case 2:
        return ClassType.warlock;
      default:
        throw UnimplementedError("Cannot map $value to a ClassType");
    }
  }

  @override
  List<Object?> get props => [value];
}
