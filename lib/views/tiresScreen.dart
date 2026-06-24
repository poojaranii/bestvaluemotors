import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class TiresScreen extends StatefulWidget {
  const TiresScreen({super.key});

  @override
  State<TiresScreen> createState() => _TiresScreenState();
}

class _TiresScreenState extends State<TiresScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: body(),
    ));
  }

  Widget body(){
    return Padding(
      padding: EdgeInsets.only(left: 2.w, right: 2.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView1(AppStrings.tires),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  commonView(
                  AppStrings.tpms,
                  AppStrings.aftermarketWheels,
                  AppStrings.yes,
                  AppStrings.no,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView(
                    AppStrings.winterTires,
                    AppStrings.studdedWinterTires,
                    AppStrings.no,
                    AppStrings.no,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView1(
                      AppStrings.fourMatchingTires,
                      AppStrings.yes,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView(
                    AppStrings.secondSetOfTires,
                    AppStrings.withRims,
                    AppStrings.yes,
                    AppStrings.yes,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView2(
                    AppStrings.driverFrontTireBrand,
                    AppStrings.tireSize,
                    AppStrings.tread,
                    AppStrings.tireBrand,
                    AppStrings.frontTireSize,
                    AppStrings.frontDriverTread,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView2(
                    AppStrings.passengerFrontTireBrand,
                    AppStrings.tireSize,
                    AppStrings.tread,
                    AppStrings.tireBrand,
                    AppStrings.frontTireSize,
                    AppStrings.frontDriverTread,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView2(
                    AppStrings.driverRearTireBrand,
                    AppStrings.tireSize,
                    AppStrings.tread,
                    AppStrings.tireBrand,
                    AppStrings.frontTireSize,
                    AppStrings.frontDriverTread,
                  ),
                  SizedBox(height: 0.6.h),
                  commonView2(
                    AppStrings.passengerRearTireBrand,
                    AppStrings.tireSize,
                    AppStrings.tread,
                    AppStrings.tireBrand,
                    AppStrings.frontTireSize,
                    AppStrings.frontDriverTread,
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget commonView(String title1,String title2,String description1,String description2) {
    return Container(
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.dividerColor, width: 1.2),
        ),
        child:Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 0.8.h),
                  Text(
                    description1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              height: 5.h,
              color: AppColors.greyColor,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title2,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 0.8.h),
                  Text(
                    description2,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
  Widget commonView1(String title1,String description1) {
    return Container(
      width: 100.w,
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.dividerColor, width: 1.2),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 0.8.h),
            Text(
              description1,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        )
    );
  }
  Widget commonView2(String title1,String title2,String title3,String description1,String description2,String description3) {
    return Container(
      width: 100.w,
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.dividerColor, width: 1.2),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 0.8.h),
            Text(
              description1,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
            Divider(color: AppColors.dividerColor),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title2,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.greyColor,
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Text(
                        description2,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 5.h,
                  color: AppColors.greyColor,
                  margin: EdgeInsets.symmetric(horizontal: 3.w),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title3,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.greyColor,
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Text(
                        description3,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        )
    );
  }

}
