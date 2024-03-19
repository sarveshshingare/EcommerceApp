import 'package:ecommerce_app/common/widgets/Login_SignUp/form_divider.dart';
import 'package:ecommerce_app/common/widgets/Login_SignUp/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signUp/signUp_widgets/signup_form.dart';

import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';


import 'package:flutter/material.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///form
              const TSignUpForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // divider

              TFormDivider(dividerText: TTexts.orSignUpWith),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              TSoicalButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
