import 'package:weatherapp/export.dart';

Future initializeRepoDependencies() async {
  serviceLocator.registerLazySingleton<WeatherRepo>(
    () => WeatherRepoImpl(
      networkHelper: serviceLocator(),
    ),
  );
}
