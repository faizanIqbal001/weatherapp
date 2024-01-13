part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class FetchWeatherData extends HomeEvent {
  final double lat;
  final double lon;

  FetchWeatherData({required this.lat, required this.lon,});
}

class ChangeStatus extends HomeEvent {
  final HomeStatus status;

  ChangeStatus({required this.status});
}
