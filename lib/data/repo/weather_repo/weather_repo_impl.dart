import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:weatherapp/export.dart';

class WeatherRepoImpl implements WeatherRepo {
  final NetworkHelper networkHelper;

  WeatherRepoImpl({
    required this.networkHelper,
  });

  String apiKey = "22c8107e64032dea1fd16835fc6ef2b9";

  @override
  Future<Either<Failure, WeatherResponseModel>> fetchWeatherInfo({
    required double lat,
    required double lon,
  }) async {
    final response = await networkHelper
        .get(NetworkEndPoints().weatherUrl(lat: lat, lon: lon, apiKey: apiKey));

    return response.fold(
      (success) {
        WeatherResponseModel weatherResponseModel =
            WeatherResponseModel.fromJson(
          jsonDecode(success),
        );
        return Right(weatherResponseModel);
      },
      (error) {
        return left(error);
      },
    );
  }
}
