
import 'dart:developer';
import 'package:weather/core/error/exception.dart';
import 'package:weather/core/error/failure.dart';


//this pattern enables error handling
abstract class BaseRepository {
  Failure dispatchException(Exception? exception) {
    log('$exception');
    if (exception is Exception) {
      switch (exception.runtimeType) {
        case TimeoutException:
          return const Failure.timeout();
        case BadRequestException:
          return const Failure.server();
        case CacheException:
          return const Failure.server();
      }
    }
    return const Failure.server();
  }
}
