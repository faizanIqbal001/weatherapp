import 'package:weatherapp/export.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  //final InitializerUseCase initializerUseCase;

  SplashBloc(//required this.initializerUseCase,
      )
      : super(const SplashState()) {
    on<NavigateToHomeScreen>(_navigateToHomeScreen);
  }

  void _navigateToHomeScreen(NavigateToHomeScreen event, emit) {
    emit(state.copyWith());
  }
}
