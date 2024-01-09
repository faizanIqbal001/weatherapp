import 'package:weatherapp/export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
          listner: (context, state) {

          },
          builder: (context, state) {
            return Container();
          }),
    );
  }
}
