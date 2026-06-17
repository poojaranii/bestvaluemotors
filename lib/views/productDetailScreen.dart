import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: body()));
  }

  Widget body() {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView(),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.dummyYearFord,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Text(
                    AppStrings.escapeSeFwd,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.orangeColor,
                            size: 18,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            AppStrings.kmAway,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 3.h,
                        width: 0.1.w,
                        color: AppColors.orangeColor,
                      ),
                      Container(
                        width: 28.w,
                        child: Text(
                          AppStrings.soldByClutch,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                            child: Text(
                              AppStrings.dummyData2,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
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
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColors.darkGreen,
                                  radius: 10,
                                  child: Text(
                                    "G",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                CircleAvatar(
                                  backgroundColor: AppColors.yellow,
                                  radius: 10,
                                  child: Text(
                                    "Y",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.save_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.print_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.share_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    width: 45.w,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 1.3.h, bottom: 1.3.h),
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.whiteColor,
                          radius: 10,
                          child: Text(
                            "A",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 10,
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          AppStrings.setAutobid,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
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
                      border: Border.all(color: AppColors.dividerColor, width: 1.2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.dummyImeiNumber,
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          AppStrings.stock,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColors.greyColor,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          AppStrings.hyphenSign,
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.year,
                          AppStrings.dummyYear,
                          Icons.calendar_month_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.make,
                          AppStrings.ford,
                          Icons.settings_input_component_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.model,
                          AppStrings.escape,
                          Icons.directions_car_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.trim,
                          AppStrings.seFwd,
                          Icons.sell_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.mileage,
                          AppStrings.dummyMileage,
                          Icons.speed_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.bodyType,
                          AppStrings.suv,
                          Icons.airport_shuttle_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.exteriorColour,
                          AppStrings.gray,
                          Icons.format_paint_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.interiorColour,
                          AppStrings.gray,
                          Icons.event_seat_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.seatMaterial,
                          AppStrings.cloth,
                          Icons.chair_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.passengers,
                          AppStrings.noSaleCount,
                          Icons.people_outline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView(
                          AppStrings.transmission,
                          AppStrings.automatic,
                          Icons.settings_input_component_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView(
                          AppStrings.drivetrain,
                          AppStrings.fwd,
                          Icons.account_tree_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  commonView(
                    AppStrings.doors,
                    AppStrings.may5,
                    Icons.door_front_door_outlined,
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

  Widget commonView(String title, String description, IconData iconName) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 2.w,
              right: 2.w,
              top: 1.h,
              bottom: 1.h,
            ),
            decoration: BoxDecoration(
              color: AppColors.bgColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.borderColor, width: 0.2),
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
    );
  }
}
