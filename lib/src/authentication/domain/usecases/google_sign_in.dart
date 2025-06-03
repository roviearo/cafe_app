import 'package:cafe_app/core/usecase/usecase.dart';
import 'package:cafe_app/core/utils/typedef.dart';
import 'package:cafe_app/src/authentication/domain/repository/authentication_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class GoogleSignIn extends UsecaseWithoutParams<User> {
  final AuthenticationRepository _authenticationRepository;

  GoogleSignIn(this._authenticationRepository);

  @override
  ResultFuture<User> call() => _authenticationRepository.googleSignIn();
}
