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
part '../features/auth/common/auth_injection.dart';

final sl = GetIt.instance;
final Dio dio = Dio();
void init() {
  _featureAuth();
}
