import 'package:bestvaluemotors/utils/appColors.dart';
import 'package:bestvaluemotors/views/NotificationSettingsScreen.dart';
import 'package:bestvaluemotors/views/myProfileScreen.dart';
import 'package:bestvaluemotors/views/myWatchListScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
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
        // height: 28.w,
        fit: BoxFit.cover,
      ),
      Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.orangeColor,
            radius: 16,
            child: CircleAvatar(
              backgroundColor: AppColors.bgColor,
              radius: 15,
              child: Icon(Icons.add, color: AppColors.orangeColor, size: 18),
            ),
          ),
          SizedBox(width: 2.w),
          GestureDetector(
            onTap: (){
              Get.to(MyWatchListScreen());
            },
            child: CircleAvatar(
              backgroundColor: AppColors.dividerColor,
              radius: 16,
              child: CircleAvatar(
                backgroundColor: AppColors.bgColor,
                radius: 15,
                child: Icon(
                  Icons.star_border_rounded,
                  color: AppColors.whiteColor,
                  size: 18,
                ),
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Stack(
            clipBehavior: Clip.none,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(NotificationSettingsScreen());
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.dividerColor,
                  radius: 16,
                  child: CircleAvatar(
                    backgroundColor: AppColors.bgColor,
                    radius: 15,
                    child: Icon(
                      Icons.notifications_none_sharp,
                      color: AppColors.whiteColor,
                      size: 18,
                    ),
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
          GestureDetector(
            onTap: (){
              Get.to(MyProfileScreen());
            },
            child: CircleAvatar(
              backgroundColor: AppColors.dividerColor,
              radius: 16,
              child: CircleAvatar(
                backgroundColor: AppColors.bgColor,
                radius: 15,
                child: Icon(
                  Icons.person_2_outlined,
                  color: AppColors.whiteColor,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget commonAppBarView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Container(
          width: 9.w,
          height: 9.w,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.orangeColor, width: 1.2),
          ),
          alignment: Alignment.center,
          child: Icon(Icons.arrow_back, color: AppColors.orangeColor, size: 18),
        ),
      ),
      ImageView(
        imageSourceType: ImageSourceType.asset,
        imageUrl: ImageUrls.imageBaseUrl + ImageUrls.appLogoUrl,
        width: 28.w,
        // height: 28.w,
        fit: BoxFit.cover,
      ),
      GestureDetector(
        onTap: (){
          Get.to(MyWatchListScreen());
        },
        child: Container(
          width: 9.w,
          height: 9.w,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.orangeColor, width: 1.2),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.star_border_rounded,
            color: AppColors.orangeColor,
            size: 22,
          ),
        ),
      ),
    ],
  );
}

Widget commonAppBarView1(String title, {bool? iconTrue,bool? menuTrue}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Container(
          width: 9.w,
          height: 9.w,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.orangeColor, width: 1.2),
          ),
          alignment: Alignment.center,
          child: Icon(Icons.arrow_back, color: AppColors.orangeColor, size: 18),
        ),
      ),
      Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.whiteColor,
            ),
          ),
          if(iconTrue??false)
            SizedBox(width: 2.w),
          if(iconTrue??false)
           Icon(Icons.info_outlined,size: 18),
            if(menuTrue??false)
            const Icon(
                Icons.tune,
                color: AppColors.orangeColor, size: 18),
        ],
      ),
      Icon(Icons.eighteen_mp, color: AppColors.bgColor),
    ],
  );
}
