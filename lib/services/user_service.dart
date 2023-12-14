import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:metronome_app/models/user.dart';

Future<void> createUser(User user) async {
  final url = Uri.parse('http://localhost:8081/users');
  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(user.toJson()),
  );

  if (response.statusCode == 201 || response.statusCode == 200) {
    print('User created successfully!');
  } else {
    print('Failed to create user.');
  }
}
