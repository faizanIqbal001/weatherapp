import 'package:get_it/get_it.dart';
import 'package:weatherapp/export.dart';

GetIt serviceLocator = GetIt.instance;

Future initializeDependencies() async {
  await Future.wait(
    [
      initializeNetworkDependencies(),
      initializeBlocs(),
      initializeRepoDependencies(),
      initializeUseCaseDependencies(),
    ],
  );
}
