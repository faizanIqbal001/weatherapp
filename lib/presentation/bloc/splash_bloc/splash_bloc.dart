import 'package:weatherapp/export.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  SplashBloc() : super( SplashState()) {
    on<NavigateToHomeScreen>(_navigateToHomeScreen);
  }

  _navigateToHomeScreen(NavigateToHomeScreen event, emit) {
    emit(
      state.copyWith(
        status: SplashStatus.navigateToHome,
      ),
    );
  }
}
