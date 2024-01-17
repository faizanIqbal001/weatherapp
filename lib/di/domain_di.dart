import 'package:weatherapp/export.dart';

Future initializeUseCaseDependencies() async {
  await homeUseCase();
}

Future homeUseCase() async {
  serviceLocator.registerLazySingleton<HomeUseCase>(
    () => HomeUseCase(
      serviceLocator<WeatherRepo>(),
    ),
  );
}
