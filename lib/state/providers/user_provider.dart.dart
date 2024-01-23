import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/user.dart';
import '../../services/user_service.dart';
import '../user_notifier.dart';

// Provides UserService and its methods
final userServiceProvider = Provider<UserService>((ref) {
  return UserService();
});

// Provides UserNotifier and its state
final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  final userService = ref.watch(userServiceProvider);
  return UserNotifier(userService, ref);
});
