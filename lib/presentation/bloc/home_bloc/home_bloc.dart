import 'package:weatherapp/export.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeUseCase homeUseCase;

  HomeBloc({required this.homeUseCase}) : super(HomeState()) {
    on<ChangeStatus>(_changeStatus);
    on<FetchWeatherData>(_fetchWeatherData);
  }

  _changeStatus(ChangeStatus event, emit) {
    emit(
      state.copyWith(status: event.status),
    );
  }

  _fetchWeatherData(FetchWeatherData event, emit) async {
    final response =
        await homeUseCase.fetchWeatherInfo(lat: event.lat, lon: event.lon);
    response.fold((error) {
      emit(state.copyWith(
        status: HomeStatus.error,
        errorMsg: error.message,
      ));
    }, (success) {
      emit(state.copyWith(
        status: HomeStatus.loaded,
        weatherResponseModel: success,
      ));
    });
  }
}
