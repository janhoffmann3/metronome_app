import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:http/http.dart';
import 'package:metronome_app/models/session.dart';
import 'package:metronome_app/models/settings.dart';
import 'package:metronome_app/models/user.dart';

import '../models/favorite.dart';

/// ### UserService class
///
/// Performs database operations and return Futures
///
///
class UserService {
  // Gets recent Firebase token
  Future<String> getFirebaseToken() async {
    try {
      String? token =
          await firebase.FirebaseAuth.instance.currentUser?.getIdToken();
      if (token != null) {
        return token;
      } else {
        throw Exception("Token is null");
      }
    } catch (e) {
      throw Exception("Failed to retrieve token");
    }
  }

  // Gets headers
  Future<Map<String, String>> getHeaders() async {
    String token = await getFirebaseToken();
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  // Creates new user in the database
  Future<User> createUser(String email, String name) async {
    var url = Uri.parse("http://localhost:8081/users");

    Settings defaultSettings = Settings(id: null, hapticFeedback: true);

    var user = User(
        id: null,
        favorites: null,
        name: name,
        email: email,
        settings: defaultSettings);

    var response = await post(
      url,
      headers: await getHeaders(),
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);
      var user = User.fromJson(jsonUser);
      return user;
    } else {
      throw Exception("Failed to load user");
    }
  }

  // Gets user by their email
  Future<User> getUserByEmail(String email) async {
    var url = Uri.parse("http://localhost:8081/users/getByEmail/$email");

    var response = await get(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);

      var user = User.fromJson(jsonUser);

      return user;
    } else {
      throw Exception("Operation failed");
    }
  }

  // Updates user's name
  Future<User> updateName(int id, String name) async {
    var url = Uri.parse("http://localhost:8081/users/$id/name?name=$name");

    var response = await put(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);

      var user = User.fromJson(jsonUser);

      return user;
    } else {
      throw Exception("Operation failed");
    }
  }

  // Updates user's settings
  Future<User> updateSettings(int id, Settings settings) async {
    var url = Uri.parse("http://localhost:8081/users/$id/settings");

    var response = await put(
      url,
      headers: await getHeaders(),
      body: jsonEncode(settings.toJson()),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);

      var user = User.fromJson(jsonUser);
      return user;
    } else {
      throw Exception("Failed to load user");
    }
  }

  // Add new favorite to a specific user
  Future<User> addFavorite(int id, Favorite favorite) async {
    var url = Uri.parse("http://localhost:8081/users/$id/favorites");

    var response = await put(
      url,
      headers: await getHeaders(),
      body: jsonEncode(favorite.toJson()),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);

      var user = User.fromJson(jsonUser);

      return user;
    } else {
      throw Exception("Failed to load user");
    }
  }

  // Removes favorite
  Future<String> removeFavorite(int id, int favoriteId) async {
    var url =
        Uri.parse("http://localhost:8081/users/$id/favorites/$favoriteId");

    var response = await delete(url, headers: await getHeaders());

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Failed to load user");
    }
  }

  // Add new session to a specific user
  Future<User> addSession(int id, Session session) async {
    var url = Uri.parse("http://localhost:8081/users/$id/sessions");

    var response = await put(
      url,
      headers: await getHeaders(),
      body: jsonEncode(session.toJson()),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonUser = jsonDecode(response.body);

      var user = User.fromJson(jsonUser);

      return user;
    } else {
      throw Exception("Failed to load user");
    }
  }
}
