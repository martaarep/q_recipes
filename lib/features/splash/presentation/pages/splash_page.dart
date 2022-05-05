import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/images/food.png',
                  height: 150,
                  width: 150,
                )),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Q Recipes',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
