import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../reusableWidgets/NotificationCard.dart';
import '../utils/appColors.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 3.w,right: 3.w),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
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
                  SizedBox(width: 4.w),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Manage how you receive alerts",
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Container(
                padding: EdgeInsets.only(left: 1.w,right: 1.w,top: 0.5.h,bottom: 0.5.h),
                decoration: BoxDecoration(
                  color: AppColors.cardBgColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.borderColor,
                  ),
                ),
                child: Row(
                  children: [
                    _tab(
                      title: "Vehicle Listings",
                      icon: Icons.directions_car_outlined,
                      selected: true,
                    ),
                    _tab(
                      title: "Auction",
                      icon: Icons.gavel_outlined,
                    ),
                    _tab(
                      title: "Post Sale",
                      icon: Icons.sell_outlined,
                    ),
                    _tab(
                      title: "Staff",
                      icon: Icons.people_outline,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 2.h),

              Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return   NotificationCard(
                      title: "Watchlist",
                      icon: Icons.remove_red_eye_outlined,
                      description:
                      "You will be notified when a watched item is 10 cars away from going live",
                      sms: true,
                      push: true,
                      email: false,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 2.h);
                  },
                ),
              ),],
          ),
        ),
      ),
    );
  }

  static Widget _tab({
    required String title,
    required IconData icon,
    bool selected = false,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 1.h,bottom: 1.h),
        decoration: BoxDecoration(
          color:
          selected ? AppColors.orangeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.whiteColor,
              size: 20,
            ),
            SizedBox(height: 1.h),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

