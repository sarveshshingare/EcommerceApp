import 'package:ecommerce_app/data/repository/authenticationRepository.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/loaders.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get intance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Signup
  void signUp() async {
    try {
      // start loading
      TFullscreenLoader.openloadingDialog(
          "We are processing your information...", TImages.docerAnimation);

      //  check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation

      if (!signupFormKey.currentState!.validate()) return;

      //  Privacy policy checks
      if (!privacyPolicy.value) {
        Tloader.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account, you must have to accept the Privacy Policy & Terms of use.");
        return;
      }

      //  Register user in the firebase authentication and save user data in the firebase
      await authenticationRepository.instance.registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());


      // save authenticated user data in the firebase firestore

    
      // show success message

      // move to verify email screen
    } catch (e) {
      // show some genric error to user
      Tloader.warningSnackBar(title: 'Oh Snap', message: e.toString());
    } finally {
      TFullscreenLoader.stopLoading();
    }
  }
}
