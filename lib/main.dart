import 'dart:async';

import 'package:flutter/services.dart';
import 'package:weatherapp/export.dart';

void main() async{
  await runZonedGuarded(() async{
    WidgetsFlutterBinding.ensureInitialized();
    await initializeDependencies();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.bottom,
        SystemUiOverlay.top,
      ],
    );
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: serviceLocator<SplashBloc>()
              ..add(
                NavigateToHomeScreen(),
              ),
          ),
        ],
        child: const MyApp(),
      ),
    );
  }, (error, stack) { });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Pro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
      initialRoute: AppRoutes.splash,
    );
  }
}
