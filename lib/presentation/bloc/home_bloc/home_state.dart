part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  HomeStatus status = HomeStatus.init;
  String errorMsg = '';
  WeatherResponseModel? weatherResponseModel = WeatherResponseModel();

  HomeState({
    this.status = HomeStatus.init,
    this.errorMsg = '',
    this.weatherResponseModel,
  });

  HomeState copyWith({
    HomeStatus? status,
    String? errorMsg,
    WeatherResponseModel? weatherResponseModel,
  }) {
    return HomeState(
        status: status ?? this.status,
        errorMsg: errorMsg ?? this.errorMsg,
        weatherResponseModel:
            weatherResponseModel ?? this.weatherResponseModel);
  }

  @override
  List<Object?> get props => [
        status,
        errorMsg,
        weatherResponseModel,
      ];
}
