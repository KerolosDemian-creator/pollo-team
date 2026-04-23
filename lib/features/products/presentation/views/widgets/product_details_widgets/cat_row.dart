import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class CatRow extends StatelessWidget {
  const CatRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Cat',
          style: TextStyles.style22W600().copyWith(fontWeight: FontWeight.w500),
        ),
        const Row(
          children: [
            Icon(
              Icons.star,
              color: AppColors.starsColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.starsColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.starsColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.starsColor,
            ),
            Icon(
              Icons.star,
              color: AppColors.starsColor,
            ),
          ],
        ),
      ],
    );
  }
}
