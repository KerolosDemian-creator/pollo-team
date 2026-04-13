import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/auth/presentation/views/widgets/custom_txt_field.dart';

class AuthFieldItem extends StatelessWidget {
  const AuthFieldItem({
    super.key,
    required this.hintText,
    required this.iconData,
    required this.keyboardType,
    required this.fieldTitle,
  });
  final String hintText;
  final IconData iconData;
  final TextInputType keyboardType;
  final String fieldTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(fieldTitle, style: TextStyles.style18W500()),
        ),
        SizedBox(height: 8.h),
        CustomTxtField(
          keyboardType: keyboardType,
          hintText: hintText,
          iconButton: IconButton(
            onPressed: () {},
            icon: Icon(iconData, color: AppColors.lightGray),
          ),
        ),
      ],
    );
  }
}
