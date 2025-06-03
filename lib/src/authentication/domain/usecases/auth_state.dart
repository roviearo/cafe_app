import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'package:cafe_app/core/usecase/usecase.dart';
import 'package:cafe_app/src/authentication/domain/repository/authentication_repository.dart';

class AuthState extends UsecaseStream<supabase.AuthState> {
  final AuthenticationRepository _authenticationRepository;

  AuthState(this._authenticationRepository);

  @override
  Stream<supabase.AuthState> call() => _authenticationRepository.authState();
}
