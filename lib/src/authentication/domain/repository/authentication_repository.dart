import 'package:cafe_app/core/utils/typedef.dart';
import 'package:cafe_app/src/authentication/domain/entities/user.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

abstract class AuthenticationRepository {
  Stream<supabase.AuthState> authState();
  ResultFuture<supabase.User> googleSignIn();
  ResultFuture<User> getUser(String id);
}
