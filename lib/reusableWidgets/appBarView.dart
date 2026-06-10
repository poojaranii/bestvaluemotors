import 'package:bestvaluemotors/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/imageUrls.dart';
import 'imageView.dart';

Widget homeAppBarView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ImageView(
        imageSourceType: ImageSourceType.asset,
        imageUrl: ImageUrls.imageBaseUrl + ImageUrls.appLogoUrl,
        width: 28.w,
        height: 28.w,
        fit: BoxFit.cover,
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.orangeColor,
            radius: 21,
            child: CircleAvatar(
              backgroundColor: AppColors.bgColor,
              radius: 20,
              child: Icon(Icons.add, color: AppColors.orangeColor, size: 22),
            ),
          ),
          SizedBox(width: 2.w),
          CircleAvatar(
            backgroundColor: AppColors.dividerColor,
            radius: 21,
            child: CircleAvatar(
              backgroundColor: AppColors.bgColor,
              radius: 20,
              child: Icon(
                Icons.star_border_rounded,
                color: AppColors.whiteColor,
                size: 22,
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.dividerColor,
                radius: 21,
                child: CircleAvatar(
                  backgroundColor: AppColors.bgColor,
                  radius: 20,
                  child: Icon(
                    Icons.notifications_none_sharp,
                    color: AppColors.whiteColor,
                    size: 22,
                  ),
                ),
              ),

              Positioned(
                top: -1,
                right: -1,
                child: Container(
                  width: 4.w,
                  height: 4.w,
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.bgColor, width: 2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 2.w),
          CircleAvatar(
            backgroundColor: AppColors.dividerColor,
            radius: 21,
            child: CircleAvatar(
              backgroundColor: AppColors.bgColor,
              radius: 20,
              child: Icon(
                Icons.person_2_outlined,
                color: AppColors.whiteColor,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget commonAppBarView() {
  return Container();
}
