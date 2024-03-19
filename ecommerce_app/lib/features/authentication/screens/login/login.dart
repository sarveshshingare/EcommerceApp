import 'package:ecommerce_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_app/common/widgets/Login_SignUp/form_divider.dart';
import 'package:ecommerce_app/common/widgets/Login_SignUp/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';

import 'package:ecommerce_app/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TspacingStyle.paddingWithAppBarheight,
          child: Column(
            children: [
              // logo ,title and subtitle
              TLoginHeader(dark: dark),

              // Form
              const TLoginForm(),

              /// Divider
              const TFormDivider(dividerText: TTexts.orSignInWith),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Footer
              const TSoicalButtons()
            ],
          ),
        ),
      ),
    );
  }
}
