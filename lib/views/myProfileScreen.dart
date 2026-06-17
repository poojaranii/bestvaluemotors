import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  body(){
    return  Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView(),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    AppStrings.myAccount,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  profileView(),
                  SizedBox(height: 2.h),
                  emailMobileView(
                    AppStrings.email,
                    AppStrings.dummyEmail,
                    Icons.email_outlined,
                  ),
                  SizedBox(height: 1.h),
                  emailMobileView(
                    AppStrings.mobilePhone,
                    AppStrings.dummyMobileNumber,
                    Icons.phone,
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                    AppStrings.secondaryPhone,
                    "-",
                    Icons.phone_android_outlined,
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                    AppStrings.auctionAccessNumber,
                    "1567890989",
                    Icons.gavel_outlined,
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                    AppStrings.auctionAccessLastVerified,
                    "-",
                    Icons.calendar_month_outlined,
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                    AppStrings.auctionAccessStatus,
                    AppStrings.approved,
                    Icons.workspace_premium_outlined,
                    color: AppColors.orangeColor
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                      AppStrings.omvicReg,
                      "-",
                      Icons.badge_outlined),
                  SizedBox(height: 1.h),
                  commonView(
                      AppStrings.expiryDate,
                      "-",
                      Icons.calendar_month_outlined,
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

Widget profileView(){
    return  Container(
      width: 100.w,
        padding: EdgeInsets.only(
          left: 3.w,
          right: 3.w,
          top: 1.3.h,
          bottom: 1.3.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child:Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.orangeColor,
                  radius: 45,
                  child: CircleAvatar(
                    backgroundColor: AppColors.bgColor,
                    radius: 43,
                    child:CircleAvatar(
                        backgroundColor: AppColors.cardBgColor,
                        radius: 40,
                        child: Icon(Icons.person,size: 55,)),
                  ),
                ),
                Positioned(
                  right: 1.w,
                  bottom: 0.1.h,
                  child: CircleAvatar(
                    backgroundColor: AppColors.orangeColor,
                    radius: 14,
                    child: Icon(Icons.edit,size: 15,color: AppColors.bgColor,)),)
              ],
            ),
            SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 3.w,
                    right: 3.w,
                    top: 1.3.h,
                    bottom: 1.3.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.dividerColor,
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.verified_user_rounded,size: 16,color: AppColors.orangeColor,),
                      SizedBox(width: 1.w),
                      Text(
                        AppStrings.enabled,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 2.w),
                Container(
                  padding: EdgeInsets.only(
                    left: 3.w,
                    right: 3.w,
                    top: 1.3.h,
                    bottom: 1.3.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.dividerColor,
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.verified_user_rounded,size: 16,color: AppColors.orangeColor,),
                      SizedBox(width: 1.w),
                      Text(
                        AppStrings.verifiedEmail,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 2.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 1.3.h,
                      bottom: 1.3.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.cardBgColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.dividerColor,
                        width: 1.2,
                      ),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.verified_user_rounded,size: 16,color: AppColors.orangeColor,),
                        SizedBox(width: 1.w),
                        Flexible(
                          child: Text(
                            AppStrings.verifiedMobilePhone,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
}
Widget emailMobileView(String title, String description, IconData iconName) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.2.h, bottom: 1.2.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        //border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 2.w,
                  right: 2.w,
                  top: 1.5.h,
                  bottom: 1.5.h,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgColor.withOpacity(0.4),
                  border: Border.all(color: AppColors.orangeColor, width: 0.2),
                ),
                child: Icon(iconName, size: 22, color: AppColors.orangeColor),
              ),
              SizedBox(width: 4.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              left: 3.w,
              right: 3.w,
              top: 1.3.h,
              bottom: 1.3.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.cardBgColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.orangeColor,
                width: 1.2,
              ),
            ),
            child: Text(
              AppStrings.verify,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: AppColors.orangeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
Widget commonView(String title, String description, IconData iconName,{bool? colorValue ,Color? color}) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.2.h, bottom: 1.2.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 2.w,
                  right: 2.w,
                  top: 1.5.h,
                  bottom: 1.5.h,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgColor.withOpacity(0.4),
                  border: Border.all(color: AppColors.orangeColor, width: 0.2),
                ),
                child: Icon(iconName, size: 22, color: AppColors.orangeColor),
              ),
              SizedBox(width: 4.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: colorValue== false  ? AppColors.whiteColor: color,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
              left: 1.5.w,
              right: 1.5.w,
              top: 0.6.h,
              bottom: 0.6.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.cardBgColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.orangeColor,
                width: 1.2,
              ),
            ),
            child:Icon(
              Icons.edit_outlined,
              size: 15,
              color: AppColors.orangeColor,
            )
          ),
        ],
      ),
    );
  }
}
