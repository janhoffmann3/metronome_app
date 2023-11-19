import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronome_app/pages/auth_page.dart';
import 'package:metronome_app/pages/favorites_page.dart';
import 'package:metronome_app/pages/main_page.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FavoritesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
