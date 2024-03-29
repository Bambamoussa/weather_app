import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/core/network/network_info.dart';
import 'package:weather/di/di_ext.dart';
import 'package:weather/features/auth/data/repository/auth_repository_impl.dart';
import 'package:weather/features/auth/domain/repository/auth_repository.dart';
import 'package:weather/features/auth/domain/usescases/login_usecases.dart';
import 'package:weather/features/auth/domain/usescases/register_usecases.dart';
import 'package:weather/features/auth/presentation/cubit/authentication_cubit.dart';
import 'package:weather/features/auth/presentation/cubit/credentials_cubit.dart';
import 'package:weather/features/weather/data/datasource/weather_remote_data_source.dart';
import 'package:weather/features/weather/data/repository/weather_repository_impl.dart';
import 'package:weather/features/weather/domain/repository/weather_repository.dart';
import 'package:weather/features/weather/domain/usescases/get_city_list_usescases.dart';
import 'package:weather/features/weather/domain/usescases/register_city_usecases.dart';
import 'package:weather/features/weather/domain/usescases/weather_usescases.dart';
import 'package:weather/features/weather/presentation/cubit/get_city_list_cubit.dart';
import 'package:weather/features/weather/presentation/cubit/register_city_cubit.dart';
import 'package:weather/features/weather/presentation/cubit/weather_cubit.dart';
part '../features/auth/common/auth_injection.dart';
part '../features/weather/common/weather_injection.dart';
final sl = GetIt.instance;
final Dio dio = Dio();
void init() {
  _featureAuth();
  _featureWeather();
}
