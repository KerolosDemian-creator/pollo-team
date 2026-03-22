import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/theme/colors_manager.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Sign in'),
        Text('Sign in to Resgister Account'),
        Form(
          child: Column(
            children: [
              Text('Email'),
              Container(
                decoration: BoxDecoration(
                  gradient: ColorsManager.primaryGradientColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),

              Text('Password'),
              Container(
                decoration: BoxDecoration(
                  gradient: ColorsManager.primaryGradientColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(2),
                child: TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),

              Container(
                width: 245.w,
                height: 80.h,
                decoration: BoxDecoration(
                  gradient: ColorsManager.primaryGradientColor,
                ),
                child: Text('Sign in'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
