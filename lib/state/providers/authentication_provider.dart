import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:metronome_app/state/authentication.dart';

final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(authenticationProvider).authStateChange;
});

final authenticationProvider = Provider<Authentication>((ref) {
  return Authentication();
});
