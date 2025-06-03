import 'package:cafe_app/core/services/injection_container.dart';
import 'package:cafe_app/core/utils/env.dart';
import 'package:cafe_app/core/utils/router.dart';
import 'package:cafe_app/core/utils/simple_bloc_observer.dart';
import 'package:cafe_app/src/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(url: Env.supabaseUrl, anonKey: Env.supabaseAnonKey);

  Bloc.observer = SimpleBlocObserver();

  await init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<AuthenticationBloc>())],
      child: MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
        title: 'Cafe App',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.lightScheme(),
          fontFamily: 'Poppins',
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: MaterialTheme.darkScheme(),
          fontFamily: 'Poppins',
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
