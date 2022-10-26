import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies() => $initGetIt(getIt);

T resolveInstanceOf<T extends Object>() => getIt.get<T>();

T resolveInstanceSingleParamOf<T extends Object>(dynamic param) => getIt.get<T>(param1: param);

T resolveInstanceTwoParamsOf<T extends Object>(dynamic param1, dynamic param2) =>
    getIt.get<T>(param1: param1, param2: param2);

T resolveNamedInstanceOf<T extends Object>(String name, {dynamic param1, dynamic param2}) =>
    getIt.get<T>(instanceName: name, param1: param1, param2: param2);
