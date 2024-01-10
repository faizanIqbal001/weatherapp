import 'package:weatherapp/export.dart';

class AppRoutes {
  static const splash = '/';
  static const homeScreen = '/homeScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    _currentRoute = settings.name;
    //Map<String, dynamic>? args = settings.arguments as Map<String, dynamic>?;

    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      default:
        return _errorRoute();
    }
  }

  static bool isCurrent(String newRoute) {
    return newRoute == _currentRoute;
  }

  static String? _currentRoute;

  static void setCurrent(String route) {
    _currentRoute = route;
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
