part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = AuthenticationInitial;
  const factory AuthenticationState.authenticated(User user) = Authenticated;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
  const factory AuthenticationState.signingIn() = SigningIn;
  const factory AuthenticationState.signedIn(supabase.User user) = SignedIn;
  const factory AuthenticationState.authenticationError(String message) =
      AuthenticationError;
}
