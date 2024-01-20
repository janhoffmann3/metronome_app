import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:metronome_app/pages/about/about_page.dart';
import 'package:metronome_app/pages/auth/auth_page.dart';
import 'package:metronome_app/pages/auth/log_in_page.dart';
import 'package:metronome_app/pages/auth/sign_up_page.dart';
import 'package:metronome_app/pages/main_page.dart';
import 'package:metronome_app/pages/settings/settings_page.dart';

import '../state/auth_provider.dart';

final _key = GlobalKey<NavigatorState>();

final appRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: AuthPage.routeLocation,
    routes: [
      GoRoute(
          path: AuthPage.routeLocation,
          name: AuthPage.routeName,
          builder: (context, state) {
            return const AuthPage();
          }),
      GoRoute(
          path: LogInPage.routeLocation,
          name: LogInPage.routeName,
          builder: (context, state) {
            return const LogInPage();
          }),
      GoRoute(
        path: SignUpPage.routeLocation,
        name: SignUpPage.routeName,
        builder: (context, state) {
          return const SignUpPage();
        },
      ),
      GoRoute(
        path: MainPage.routeLocation,
        name: MainPage.routeName,
        builder: (context, state) {
          return const MainPage();
        },
      ),
      GoRoute(
        path: AboutPage.routeLocation,
        name: AboutPage.routeName,
        builder: (context, state) {
          return const AboutPage();
        },
      ),
      GoRoute(
        path: SettingsPage.routeLocation,
        name: SettingsPage.routeName,
        builder: (context, state) {
          return const SettingsPage();
        },
      ),
    ],
    redirect: (context, state) {
      if (authState.isLoading || authState.hasError) return null;

      final isAuth = authState.valueOrNull != null;

      final isLanding = state.matchedLocation == AuthPage.routeLocation;
      if (isLanding) {
        return isAuth ? MainPage.routeLocation : null;
      }

      final isLogingIn = state.matchedLocation == LogInPage.routeLocation;
      if (isLogingIn) {
        return isAuth ? MainPage.routeLocation : null;
      }

      final isSigningUp = state.matchedLocation == SignUpPage.routeLocation;
      if (isSigningUp) {
        return isAuth ? MainPage.routeLocation : null;
      }

      return isAuth ? null : AuthPage.routeLocation;
    },
  );
});
