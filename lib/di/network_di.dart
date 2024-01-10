import 'package:weatherapp/export.dart';

Future initializeNetworkDependencies() async {
  serviceLocator.registerLazySingleton<NetworkHelper>(
    () => NetworkHelperImpl(),
  );
}
