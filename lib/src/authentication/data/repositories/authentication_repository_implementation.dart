import 'package:cafe_app/core/errors/exception.dart';
import 'package:cafe_app/core/errors/failure.dart';
import 'package:cafe_app/core/utils/typedef.dart';
import 'package:cafe_app/src/authentication/data/datasources/authentication_remote_data_source.dart';
import 'package:cafe_app/src/authentication/data/mappers/user_mapper.dart';
import 'package:cafe_app/src/authentication/domain/entities/user.dart';
import 'package:cafe_app/src/authentication/domain/repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class AuthenticationRepositoryImplementation
    implements AuthenticationRepository {
  final AuthenticationRemoteDataSource _authenticationRemoteDataSource;

  AuthenticationRepositoryImplementation(this._authenticationRemoteDataSource);

  @override
  Stream<supabase.AuthState> authState() {
    return _authenticationRemoteDataSource.authState();
  }

  @override
  ResultFuture<supabase.User> googleSignIn() async {
    try {
      final result = await _authenticationRemoteDataSource.googleSignIn();

      return Right(result);
    } on APIException catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  ResultFuture<User> getUser(String id) async {
    try {
      final result = await _authenticationRemoteDataSource.getUser(id);

      return Right(result.toEntity());
    } on APIException catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
