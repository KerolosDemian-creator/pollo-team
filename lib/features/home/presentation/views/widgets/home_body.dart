import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/validation/locale_keys.dart';
import 'package:pollo/features/home/presentation/views/widgets/categories_List_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            /// App Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85.w,
                  height: 32.h,
                  child: Image.asset(AppImages.splashLogo),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              ],
            ),

            SizedBox(height: 24.h),

            /// Search Field
            TextFormField(
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
            ),

            SizedBox(height: 30.h),

            ///ads
            SizedBox(child: Image.asset(AppImages.adsImage)),

            SizedBox(height: 24.h),

            /// Categories
            Text(
              LocaleKeys.categories.tr(),
              style: TextStyles.style20W400().copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.h),

            /// List of categories
            const Expanded(child: CategoriesListView()),
          ],
        ),
      ),
    );
  }
}
