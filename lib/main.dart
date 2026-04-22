import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/api/dio_factory.dart';
import 'package:pollo/core/resources/get_it.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/core/shared_pref/shared_pref_helper.dart';
import 'package:pollo/pollo_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  await SharedPrefHelper.init();
  await EasyLocalization.ensureInitialized();
  await DioFactory.initialize();
  setupGetIt();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: PolloApp(appRouter: AppRouter()),
    ),
  );
}
