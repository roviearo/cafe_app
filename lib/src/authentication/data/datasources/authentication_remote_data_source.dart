import 'package:cafe_app/core/errors/exception.dart';
import 'package:cafe_app/core/utils/env.dart';
import 'package:cafe_app/src/authentication/data/models/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

abstract class AuthenticationRemoteDataSource {
  Stream<supabase.AuthState> authState();
  Future<supabase.User> googleSignIn();
  Future<UserModel> getUser(String id);
}

class AuthRemoteDataSrcImpl implements AuthenticationRemoteDataSource {
  AuthRemoteDataSrcImpl(this._auth, this._supabaseClient);

  final supabase.GoTrueClient _auth;
  final supabase.SupabaseClient _supabaseClient;

  @override
  Future<supabase.User> googleSignIn() async {
    try {
      final webClientId = Env.webClientId;
      final androidClientId = Env.androidClientId;

      final GoogleSignIn googleSignIn = GoogleSignIn(
        clientId: androidClientId,
        serverClientId: webClientId,
      );

      final googleUser = await googleSignIn.signIn();
      final googleAuth = await googleUser!.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) {
        throw 'No Access Token found.';
      }
      if (idToken == null) {
        throw 'No ID Token found.';
      }

      final response = await _auth.signInWithIdToken(
        provider: supabase.OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      return response.user!;
    } on APIException catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    } on supabase.AuthException catch (e) {
      throw APIException(
        message: e.message,
        statusCode: int.parse(e.statusCode!),
      );
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  Stream<supabase.AuthState> authState() {
    return _auth.onAuthStateChange;
  }

  @override
  Future<UserModel> getUser(String id) async {
    try {
      final response = await _supabaseClient
          .from('profiles')
          .select()
          .eq('id', id)
          .single();
      return UserModel.fromJson(response);
    } on APIException catch (e) {
      throw APIException(message: e.message, statusCode: e.statusCode);
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }
}
