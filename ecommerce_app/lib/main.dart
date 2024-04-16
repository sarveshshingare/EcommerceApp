import 'package:ecommerce_app/app.dart';
import 'package:ecommerce_app/data/repository/authenticationRepository.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart';

Future<void> main() async {
  //Add widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Todo : Init Local Storage
  await GetStorage.init();

  // Todo : Await Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // FlutterNativeSplash.preser;

  // Todo : Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(authenticationRepository()));

  // Todo : Initialize Authentication

  runApp(const App());
}
