import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/validation/locale_keys.dart';

class CustomTxtFormField extends StatelessWidget {
  const CustomTxtFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        hintText: LocaleKeys.whatAreYouLookingFor.tr(),
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: AppColors.lightBackground,
      ),
    );
  }
}
