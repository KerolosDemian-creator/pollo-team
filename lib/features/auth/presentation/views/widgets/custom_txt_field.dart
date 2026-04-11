import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/theme/colors_manager.dart';

class CustomTxtField extends StatelessWidget {
  const CustomTxtField({
    super.key,
    required this.hintText,
    required this.iconButton,
  });
  final String hintText;
  final IconButton iconButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsManager.primaryGradientColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(2),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: iconButton,
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
          hint: Text(
            hintText,
            style: TextStyles.style16W500().copyWith(
              color: AppColors.lightGray,
            ),
          ),

          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
