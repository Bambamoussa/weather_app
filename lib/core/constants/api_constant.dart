import 'package:weather/core/env/env.dart';

class ApiConstants {
  ApiConstants._();
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static String weatherLocation(String location) =>
      '$baseUrl?q=$location&APPID=${Env.appid}';
}
