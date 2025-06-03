import 'package:cafe_app/src/authentication/domain/entities/user.dart';
import 'package:cafe_app/src/authentication/domain/usecases/auth_state.dart';
import 'package:cafe_app/src/authentication/domain/usecases/get_user.dart';
import 'package:cafe_app/src/authentication/domain/usecases/google_sign_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required GoogleSignIn googleSignIn,
    required GetUser getUser,
    required AuthState authState,
  }) : _googleSignIn = googleSignIn,
       _getUser = getUser,
       super(AuthenticationInitial()) {
    on<GoogleSignInEvent>(_onGoogleSignInEvent);
    on<AuthUserChanged>(_onAuthUserChanged);

    authState.call().listen(
      (data) => add(AuthUserChanged(data.event, data.session)),
    );
  }

  final GoogleSignIn _googleSignIn;
  final GetUser _getUser;

  _onGoogleSignInEvent(
    GoogleSignInEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(SigningIn());

    final result = await _googleSignIn.call();

    result.fold(
      (failure) => emit(AuthenticationError(failure.message)),
      (user) => emit(SignedIn(user)),
    );
  }

  _onAuthUserChanged(
    AuthUserChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    if (event.session?.accessToken != null) {
      final result = await _getUser.call(GetUserParams(event.session!.user.id));

      result.fold(
        (failure) => emit(AuthenticationError(failure.message)),
        (user) => emit(Authenticated(user)),
      );
    } else {
      emit(const Unauthenticated());
    }
  }
}
