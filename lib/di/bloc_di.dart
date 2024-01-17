import 'package:weatherapp/export.dart';

Future initializeBlocs() async {
  serviceLocator.registerLazySingleton(
    () => SplashBloc(),
  );

  serviceLocator.registerLazySingleton(
    () => HomeBloc(
      homeUseCase: serviceLocator<HomeUseCase>(),
    ),
  );
}
