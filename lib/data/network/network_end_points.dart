class NetworkEndPoints {
  static String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static String weather = "/forecast?lat={lat}4&lon={lon}&appid={appid}&units=metric";

  ///Get CompleteUrl
  String weatherUrl({
    double lat = 0.0,
    double lon = 0.0,
    String apiKey = '',
  }) {
    return baseUrl +
        weather
            .replaceAll('{lat}', lat.toString())
            .replaceAll('{lon}', lon.toString())
            .replaceAll('{appid}', apiKey);
  }
}
