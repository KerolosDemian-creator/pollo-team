import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/core/routing/routes.dart';

class PolloApp extends StatelessWidget {
  const PolloApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xffFFFFFF),
            useMaterial3: true,
          ),
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          initialRoute: Routes.onboardingScreen,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
