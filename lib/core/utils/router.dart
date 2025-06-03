import 'package:cafe_app/core/services/injection_container.dart';
import 'package:cafe_app/core/utils/go_router_refresh_bloc.dart';
import 'package:cafe_app/src/home/presentation/views/add_menu_screen.dart';
import 'package:cafe_app/src/home/presentation/views/detail_menu_screen.dart';
import 'package:cafe_app/src/home/presentation/views/home_screen.dart';
import 'package:cafe_app/src/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:cafe_app/src/authentication/presentation/views/login_screen.dart';
import 'package:cafe_app/src/authentication/presentation/views/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final AuthenticationBloc authenticationBloc = sl<AuthenticationBloc>();
GoRouterRefreshBloc routerRefreshBloc = GoRouterRefreshBloc(
  authenticationBloc.stream,
);

final router = GoRouter(
  refreshListenable: routerRefreshBloc,
  initialLocation: '/splash',
  redirect: (context, state) {
    final authenticationState = context.read<AuthenticationBloc>().state;

    final path = state.uri.path;
    if (authenticationState is AuthenticationInitial) {
      return path == '/splash' ? null : '/splash';
    }

    final isLoggedIn = authenticationState is Authenticated;
    final isLogin = path == '/login';

    if (!isLoggedIn && !isLogin) return '/login';

    if (isLoggedIn && isLogin) return '/';

    return null;
  },
  routes: [
    GoRoute(path: '/', name: 'home', builder: (context, state) => HomeScreen()),
    GoRoute(
      path: '/add_menu',
      name: 'add_menu',
      builder: (context, state) => AddMenuScreen(),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: '/detail',
      name: 'detail',
      builder: (context, state) => DetailMenuScreen(),
    ),
  ],
);
