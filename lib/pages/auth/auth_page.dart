import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});
  static String get routeName => 'auth';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            /* gradient: RadialGradient(
        center: Alignment.bottomLeft,
        colors: [Color(0xFE291E4D), Color(0xFE10151D)],
        stops: [0, 1],
        radius: 1,
      ) */
            image: DecorationImage(
                image: AssetImage("assets/images/auth_page_background.jpg"),
                fit: BoxFit.cover)),
        child: Column(children: [
          const SizedBox(
            height: 165,
          ),
          Center(
            child: Container(
              width: 150,
              height: 75,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Column(
            children: [
              Text(
                "Let's tame those beats!",
                style: AppFonts.titleSmall,
              ),
              Text(
                "Sign in and we'll get started",
                style:
                    AppFonts.bodyLarge.copyWith(color: AppColors.secondary500),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width > 480
                    ? 340
                    : MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 15),

                // It has a decoration of a rectangle with rounded corners. The radius is 10px.
                decoration: BoxDecoration(
                  color: AppColors.primary400,
                  borderRadius: BorderRadius.circular(10),
                ),

                // The ElevatedButton is a child of the Container. It makes the button clickable.
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  // Title of the button.
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          FontAwesomeIcons.google,
                          color: AppColors.secondary900,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Continue with google",
                          style: AppFonts.bodyLarge
                              .copyWith(color: AppColors.secondary900),
                        ),
                      ]
                      // Icon - always chevron_right since it is a navigation button.
                      ),
                ),
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width > 480
                    ? 340
                    : MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 15),

                // It has a decoration of a rectangle with rounded corners. The radius is 10px.
                decoration: BoxDecoration(
                    color: AppColors.secondary700,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.secondary500)),

                // The ElevatedButton is a child of the Container. It makes the button clickable.
                child: ElevatedButton(
                  onPressed: () {
                    context.go("/auth/signup");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  // Title of the button.
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.email,
                          color: AppColors.primary200,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign up with email",
                          style: AppFonts.bodyLarge,
                        ),
                        // Icon - always chevron_right since it is a navigation button.
                      ]),
                ),
              ),
              Container(
                height: 56,
                width: MediaQuery.of(context).size.width > 480
                    ? 340
                    : MediaQuery.of(context).size.width * 0.85,
                margin: const EdgeInsets.only(top: 15),

                // It has a decoration of a rectangle with rounded corners. The radius is 10px.
                decoration: BoxDecoration(
                    color: AppColors.secondary700,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.secondary500)),

                // The ElevatedButton is a child of the Container. It makes the button clickable.
                child: ElevatedButton(
                  onPressed: () {
                    context.go("/auth/login");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  // Title of the button.
                  child: Center(
                    child: Text(
                      "Login",
                      style: AppFonts.bodyLarge,
                    ),
                    // Icon - always chevron_right since it is a navigation button.
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          )
        ]),
      ),
    );
  }
}
