import 'package:cafe_app/src/authentication/data/datasources/authentication_remote_data_source.dart';
import 'package:cafe_app/src/authentication/data/repositories/authentication_repository_implementation.dart';
import 'package:cafe_app/src/authentication/domain/repository/authentication_repository.dart';
import 'package:cafe_app/src/authentication/domain/usecases/auth_state.dart';
import 'package:cafe_app/src/authentication/domain/usecases/get_user.dart';
import 'package:cafe_app/src/authentication/domain/usecases/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;
import 'package:cafe_app/src/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

init() async {
  sl
    ..registerFactory(
      () => AuthenticationBloc(
        googleSignIn: sl(),
        authState: sl(),
        getUser: sl(),
      ),
    )
    ..registerLazySingleton(() => GoogleSignIn(sl()))
    ..registerLazySingleton(() => GetUser(sl()))
    ..registerLazySingleton(() => AuthState(sl()))
    ..registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImplementation(sl()),
    )
    ..registerLazySingleton<AuthenticationRemoteDataSource>(
      () => AuthRemoteDataSrcImpl(sl(), sl()),
    )
    ..registerLazySingleton(() => supabase.Supabase.instance.client.auth)
    ..registerLazySingleton(() => supabase.Supabase.instance.client);
}
