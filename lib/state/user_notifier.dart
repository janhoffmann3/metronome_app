import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/models/favorite.dart';
import 'package:metronome_app/models/session.dart';
import 'package:metronome_app/models/settings.dart';
import 'package:metronome_app/state/providers/authentication_provider.dart';

import '../models/user.dart';
import '../services/user_service.dart';

/// ###UserNotifier class
///
/// Manages user's state
///
///
class UserNotifier extends StateNotifier<User?> {
  final UserService userService;
  final Ref ref;

  UserNotifier(this.userService, this.ref) : super(null) {
    syncUser();
  }

  // Create new user by calling userService
  Future<void> createUser(String email, String name) async {
    try {
      User user = await userService.createUser(email, name);
      state = user;
    } catch (e) {
      rethrow;
    }
  }

  // Sync user - get current Firebase user's email and get the user by it from databse
  // Save user to state
  // Syncs Firebase user with MySQL user
  Future<void> syncUser() async {
    try {
      var email = ref
          .watch(authStateProvider.select((value) => value.valueOrNull?.email));
      if (email != null) {
        User user = await userService.getUserByEmail(email);
        state = user;
      }
    } catch (e) {
      rethrow;
    }
  }

  // Update user's name
  Future<void> updateName(String name) async {
    try {
      if (state?.id != null) {
        int? id = state?.id;
        User user = await userService.updateName(id!, name);
        state = user;
      } else {
        throw Exception("ID not found");
      }
    } catch (e) {
      rethrow;
    }
  }

  // Update user's settings
  Future<void> updateSettings(Settings settings) async {
    try {
      if (state?.id != null) {
        int? id = state?.id;
        User user = await userService.updateSettings(id!, settings);
        state = user;
      } else {
        throw Exception("ID not found");
      }
    } catch (e) {
      rethrow;
    }
  }

  // Add new favorite for current user
  Future<void> addFavorite(Favorite favorite) async {
    try {
      if (state?.id != null) {
        int? id = state?.id;
        User user = await userService.addFavorite(id!, favorite);
        state = user;
      } else {
        throw Exception("ID not found");
      }
    } catch (e) {
      rethrow;
    }
  }

  // Remove favorite from current user
  Future<void> removeFavorite(int favoriteId) async {
    try {
      if (state?.id != null) {
        int? id = state?.id;
        await userService.removeFavorite(id!, favoriteId);
        syncUser();
      } else {
        throw Exception("ID not found");
      }
    } catch (e) {
      rethrow;
    }
  }

  // Add new session for current user
  Future<void> addSession(Session session) async {
    try {
      if (state?.id != null) {
        int? id = state?.id;
        User user = await userService.addSession(id!, session);
        state = user;
      } else {
        throw Exception("ID not found");
      }
    } catch (e) {
      rethrow;
    }
  }
}
