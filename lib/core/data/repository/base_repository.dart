import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather/core/error/exception.dart';
import 'package:weather/core/error/failure.dart';

//this pattern enables error handling
mixin BaseRepository {
  Failure dispatchException(Exception? exception) {
    log('$exception');
    if (exception is Exception) {
      switch (exception.runtimeType) {
        case TimeoutException:
          return Failure.timeout(
            message: exception.toString(),
          );
        case BadRequestException:
          return Failure.server(
            message: exception.toString(),
          );
        case CacheException:
          return Failure.server(
            message: exception.toString(),
          );
        case FirebaseAuthException:
          return Failure.server(
            message: exception.toString(),
          );
      }
    }
    return const Failure.server();
  }
}
