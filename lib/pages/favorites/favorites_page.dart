import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';
import '../../widgets/favorites_page/favorites_tile_widget.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});
  static String get routeName => 'favorites';
  static String get routeLocation => '/favorites';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: AppColors.secondary900,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.go("/");
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.secondary200,
                        size: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Home",
                      style: AppFonts.titleSmall,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your favorites",
                    style: AppFonts.titleLarge,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  children: const <Widget>[
                    FavoritesTileWidget(
                        bpm: "140",
                        name: "Favorite #1",
                        signature: "4/4",
                        sound: "Piano"),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          )),
    );
  }
}
