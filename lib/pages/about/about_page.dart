import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../resources/values/app_colors.dart';
import '../../resources/values/app_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  static String get routeName => 'about';
  static String get routeLocation => '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/main_page_background.jpg"),
                  fit: BoxFit.cover)),
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
                    "About",
                    style: AppFonts.titleLarge,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColors.secondary700,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border:
                        Border.all(color: AppColors.secondary500, width: 1)),
                child: Text(
                  "This app was created as a project for PPRO seminar on University of Hradec Králové by Jan Hoffmann in 2023.",
                  style: AppFonts.regular,
                ),
              )
            ],
          )),
    );
  }
}
