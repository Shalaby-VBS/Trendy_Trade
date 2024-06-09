import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/categories_response_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoriesResponseModel? categoriesResponseModel;
  final int itemIndex;
  final int selectedIndex;
  const CategoryItem({
    super.key,
    this.categoriesResponseModel,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.purple,
                    child: SvgPicture.asset(
                      'assets/category.svg',
                      color: Colors.white,
                      height: itemIndex == selectedIndex ? 42.h : 40.h,
                      width: itemIndex == selectedIndex ? 42.w : 40.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.purple,
                  child: SvgPicture.asset(
                    'assets/category.svg',
                    height: itemIndex == selectedIndex ? 42.h : 40.h,
                    width: itemIndex == selectedIndex ? 42.w : 40.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            categoriesResponseModel?.name ?? 'Category',
            style: itemIndex == selectedIndex
                ? TextStyles.size14BlackW600
                : TextStyles.size12BlackW400,
          ),
        ],
      ),
    );
  }
}
