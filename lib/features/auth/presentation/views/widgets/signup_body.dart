import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/theme/colors_manager.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Sign up'),
        Form(
          child: Column(
            children: [
              Text('Name'),

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
              Text('Phone'),

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

              Text('Confirm Password'),

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
                child: Text('Sign up'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
