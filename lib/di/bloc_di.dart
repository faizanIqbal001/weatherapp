import 'package:weatherapp/export.dart';

Future initializeBlocs() async {
  serviceLocator.registerLazySingleton(
    () => SplashBloc(),
  );
}
