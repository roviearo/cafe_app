import 'package:cafe_app/core/utils/router.dart';
import 'package:cafe_app/src/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Future.delayed(
            Duration(seconds: 3),
          ).then((value) => router.goNamed('home'));
        }
      },
      child: Scaffold(
        body: SafeArea(child: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
