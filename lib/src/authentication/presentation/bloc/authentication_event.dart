part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.googleSignInEvent() = GoogleSignInEvent;
  const factory AuthenticationEvent.authUserChanged(
    supabase.AuthChangeEvent? authChangeEvent,
    supabase.Session? session,
  ) = AuthUserChanged;
}
