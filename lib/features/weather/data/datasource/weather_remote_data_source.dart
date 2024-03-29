import 'package:weather/core/constants/api_constant.dart';
import 'package:weather/core/data/datasource/remote_datasource.dart';

abstract class WeatherRemoteDataSource {
  Future<dynamic> getWeatherByLocation(String location);
}

class WeatherRemoteDataSourceImpl extends RemoteDataSource
    implements WeatherRemoteDataSource {
  WeatherRemoteDataSourceImpl({required super.dio});

  @override
  Future<dynamic> getWeatherByLocation(String location) => performGetRequestApi(
        apiEndpoint: ApiConstants.weatherLocation(location),
      );
}
