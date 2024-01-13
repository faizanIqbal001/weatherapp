import 'package:weatherapp/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SplashBloc>().add(NavigateToHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          switch (state.status) {
            case SplashStatus.loaded:
              break;
            case SplashStatus.navigateToHome:
              Future.delayed(
                const Duration(seconds: 3),
                    () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.homeScreen,
                  );
                },
              );
              break;

            case SplashStatus.init:
            // TODO: Handle this case.
              break;
          }
        },
        builder: (context, state) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud,
                    color: Colors.cyan,
                    size: 200,
                  ),
                  Text(
                    "Weather Check",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                    child: LinearProgressIndicator(
                      minHeight: 10,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
