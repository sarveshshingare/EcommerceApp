import 'dart:io';

import 'package:ecommerce_app/features/authentication/screens/Onboarding/onboarding.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class authenticationRepository extends GetxController {
  static authenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// called from main.dart on app launch
  @override
  void onReady() {
    // TODO: implement onReady
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read("isFirstTime") != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }

/*---------------------Email and password signin------------- */

// [Email Auth] -  signin
// [Email Auth] -  Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'something went wrong';
    }
  }

// [Email Auth] -  Mail verify
// [Reauthenticate] -  Reauthenticate user
// [Email Auth] - forget Password

/*---------------------Featured identity and social signin------------- */

// [Google Auth] -  GOOGLE
// [facebook Auth] -  facebook

/*---------------------Fedarated identity and social signin------------- */

// [Logoout user ] -  valid for any auth
// [Delete User] -  remove user from auth and firestore account
}
