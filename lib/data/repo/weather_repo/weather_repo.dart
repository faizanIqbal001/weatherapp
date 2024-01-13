import 'package:dartz/dartz.dart';
import 'package:weatherapp/export.dart';


mixin WeatherRepo {
  Future<Either<Failure,WeatherResponseModel>> fetchWeatherInfo({
    required double lat,
    required double lon,
  });
}
