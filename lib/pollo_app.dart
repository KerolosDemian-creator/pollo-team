import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/features/onboarding/presentation/views/on_boarding_screen.dart';

class PolloApp extends StatelessWidget {
  const PolloApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(home: OnBoardingScreen(),debugShowCheckedModeBanner: false,),
    );
  }
}
