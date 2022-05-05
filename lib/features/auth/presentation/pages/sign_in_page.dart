import 'package:flutter/material.dart';
import 'package:flutter_tdd_q/features/auth/presentation/state/providers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/food.png',
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Welcome to Q recipes',
                  style: Theme.of(context).textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton.icon(
                onPressed: () =>
                    ref.read(authNotifierProvider.notifier).signIn(),
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    primary: Colors.white,
                    onPrimary: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0)),
                label: const Text(
                  "Sign in with Google",
                ),
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
