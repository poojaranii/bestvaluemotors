import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class PaintScreen extends StatefulWidget {
  const PaintScreen({super.key});

  @override
  State<PaintScreen> createState() => _PaintScreenState();
}

class _PaintScreenState extends State<PaintScreen> {
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
      child:  Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView1(AppStrings.paint),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.8.h, bottom: 1.8.h),
                   decoration: BoxDecoration(
                     color: AppColors.cardBgColor,
                     borderRadius: BorderRadius.circular(8),
                     border: Border.all(
                       color: AppColors.dividerColor,
                       width: 1.2,
                     ),
                   ),
                   child:  Row(
                     children: [
                       Container(
                         padding: EdgeInsets.only(
                           left: 3.w,
                           right: 3.w,
                           top: 1.5.h,
                           bottom: 1.5.h,
                         ),
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: AppColors.lightCardBgColor,
                         ),
                         child: Icon(Icons.format_paint_rounded, size: 24, color: AppColors.orangeColor),
                       ),
                       SizedBox(width: 3.w),
                       Expanded(
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                           AppStrings.vehicleRepainted,
                               maxLines: 2,
                               style: const TextStyle(
                                 fontWeight: FontWeight.w400,
                                 fontSize: 10,
                                 color: AppColors.greyColor,
                               ),
                             ),
                             SizedBox(height: 0.6.h),
                             Text(
                               "No",
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
                   ),
                 ),
                 SizedBox(height: 2.h),
                 Row(
                   children: [
                     Expanded(
                       child: commonView(
                         AppStrings.hoodDepth,
                         "4.0",
                         Icons.car_repair_rounded,
                       ),
                     ),
                     SizedBox(width: 2.w),
                     Expanded(
                       child: commonView(
                         AppStrings.driverFender,
                         "5.0",
                         Icons.directions_car_filled_rounded,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 1.h),
                 Row(
                   children: [
                     Expanded(
                       child: commonView(
                         AppStrings.driverFrontDoor,
                         "4.0",
                         Icons.door_front_door_outlined,
                       ),
                     ),
                     SizedBox(width: 2.w),
                     Expanded(
                       child: commonView(
                         AppStrings.driverRearDoor,
                         "5.0",
                         Icons.door_back_door_outlined,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 1.h),
                 Row(
                   children: [
                     Expanded(
                       child: commonView(
                         AppStrings.driverQuarterPanel,
                         "4.0",
                         Icons.crop_square_rounded,
                       ),
                     ),
                     SizedBox(width: 2.w),
                     Expanded(
                       child: commonView(
                         AppStrings.trunk,
                         "5.0",
                         Icons.inventory_2_outlined,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 1.h),
                 Row(
                   children: [
                     Expanded(
                       child: commonView(
                         AppStrings.roofDepth,
                         "4.0",
                         Icons.roofing_rounded,
                       ),
                     ),
                     SizedBox(width: 2.w),
                     Expanded(
                       child: commonView(
                         AppStrings.passengerFender,
                         "5.0",
                         Icons.directions_car_filled_rounded,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 1.h),
                 Row(
                   children: [
                     Expanded(
                       child: commonView(
                         AppStrings.passengerFrontDoor,
                         "4.0",
                         Icons.door_front_door_outlined,
                       ),
                     ),
                     SizedBox(width: 2.w),
                     Expanded(
                       child: commonView(
                         AppStrings.passengerRearDoor,
                         "5.0",
                         Icons.door_back_door_outlined,
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 1.h),
                 commonView(
                   AppStrings.passengerQuarterPanel,
                   "5.0",
                   Icons.crop_square_rounded,
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

  Widget commonView(String title,String rating,IconData iconName){
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.8.h, bottom: 1.8.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.dividerColor,
          width: 1.2,
        ),
      ),
      child:  Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 3.w,
              right: 3.w,
              top: 1.5.h,
              bottom: 1.5.h,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightCardBgColor,
            ),
            child: Icon(iconName, size: 24, color: AppColors.orangeColor),
          ),
          SizedBox(width: 3.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 0.6.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 3.w, right: 3.w, top: 0.6.h, bottom: 0.6.h),
                      decoration: BoxDecoration(
                        color: AppColors.lightCardBgColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.dividerColor,
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        rating,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      "/10",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
