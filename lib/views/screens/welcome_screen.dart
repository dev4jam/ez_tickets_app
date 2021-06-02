import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

//Helpers
import '../../helper/utils/constants.dart';
import '../../helper/extensions/context_extensions.dart';

//Routes
import '../../routes/app_router.gr.dart';

//Widgets
import '../widgets/common/custom_text_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Welcome
            Text(
              "Welcome",
              style: context.headline1.copyWith(color: Constants.primaryColor),
            ),

            const SizedBox(height: 20),

            //Continue Button
            CustomTextButton.gradient(
              width: double.infinity,
              onPressed: () {
                context.router.push(const MoviesScreenRoute());
              },
              gradient: Constants.buttonGradientOrange,
              child: const Center(
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
