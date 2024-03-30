import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:weather/core/data/repository/base_repository.dart';
import 'package:weather/core/domain/entities/result.dart';
import 'package:weather/core/error/failure.dart';
import 'package:weather/core/network/network_info.dart';
import 'package:weather/features/auth/domain/repository/auth_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository
    with BaseRepository {
  AuthenticationRepositoryImpl({
    required this.networkInfo,
    required this.firebaseAuth,
    required this.firebaseStore,
  });

  final NetworkInfo networkInfo;
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseStore;

  @override
  Future<Result<bool>> logIn(
    String email,
    String password,
  ) async {
    if (!await networkInfo.isConnected) {
      return const Result.success(
        true,
      );
    }
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }

  @override
  Future<Result<bool>> register(
    String email,
    String password,
  ) async {
    if (!await networkInfo.isConnected) {
      return const Result.failure(
        Failure.offline(),
      );
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return const Result.success(true);
    } on Exception catch (e) {
      return Result.failure(
        dispatchException(e),
      );
    }
  }
}
