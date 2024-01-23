import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:metronome_app/resources/values/app_colors.dart';
import 'package:metronome_app/resources/values/app_fonts.dart';
import 'package:metronome_app/state/providers/authentication_provider.dart';

import '../../state/providers/session_provider.dart';

/// ### Authentication page
///
///  Landing page for unauthenticated user.
///
///
class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});
  static String get routeName => 'auth';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // RiverPod
    final auth = ref.watch(authenticationProvider);
    final sessionNotifier = ref.watch(sessionControllerProvider.notifier);

    // Shows error dialog when Firebase app returns an error
    void showErrorDialog(String error) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text('Something went wrong'),
                content: Text(error),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text("OK"))
                ],
              ));
    }

    // Calls auth provider method to sign in with Google
    Future<void> signInWithGoogle() async {
      try {
        await auth
            .signInWithGoogle()
            .then((value) => sessionNotifier.startSession());
      } on FirebaseAuthException catch (e) {
        showErrorDialog(e.message.toString());
      }
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
                  onPressed: () async {
                    await signInWithGoogle();
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
