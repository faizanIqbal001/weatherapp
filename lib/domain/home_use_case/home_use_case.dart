import 'package:dartz/dartz.dart';
import 'package:weatherapp/data/export.dart';

class HomeUseCase {
  WeatherRepo weatherRepo;

  HomeUseCase(this.weatherRepo);

  Future<Either<Failure,WeatherResponseModel>> fetchWeatherInfo({
    required double lat,
    required double lon,
  }) async{

    final response = await weatherRepo.fetchWeatherInfo(lat: lat, lon: lon);

     return response.fold((error) {
       return left(error);
     }, (success) {
       return Right(success);
     });

  }
}
