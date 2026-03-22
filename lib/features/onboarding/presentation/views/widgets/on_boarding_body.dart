import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/core/routing/routes.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2) , (){
    //   Navigator.pushReplacement(context, Routes.loginScreen)
    // });
    return Center(
      child: SizedBox(
        width: 230.w,
        child: Image.asset('lib/core/resources/images/Group 9.png'),
      ),
    );
  }
}
