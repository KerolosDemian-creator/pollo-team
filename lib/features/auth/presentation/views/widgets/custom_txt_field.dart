import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/theme/colors_manager.dart';

class CustomTxtField extends StatelessWidget {
  const CustomTxtField({
    super.key,
    required this.hintText,
    required this.iconButton,
    required this.keyboardType,
  });
  final String hintText;
  final IconButton iconButton;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorsManager.primaryGradientColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(2),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: iconButton,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
          hintText: hintText,
          hintStyle: TextStyles.style16W500().copyWith(
            color: AppColors.lightGray,
          ),
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
