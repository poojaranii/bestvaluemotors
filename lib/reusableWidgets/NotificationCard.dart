import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  final bool sms;
  final bool push;
  final bool email;

  const NotificationCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.sms = false,
    this.push = false,
    this.email = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1.4.h,bottom: 1.4.h,left: 3.w,right: 3.w),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 11.w,
                width: 11.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.orangeColor.withOpacity(.12),
                ),
                child: Icon(
                  icon,
                  color: AppColors.orangeColor,
                  size: 22,
                ),
              ),

              SizedBox(width: 3.w),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 1.4.h),
                    Text(
                      description,
                      style: TextStyle(
                        color: AppColors.greyColor,
                        height: 1.4,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  Text(
                    "On",
                    style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 12
                    ),
                  ),
                  SizedBox(height: 1.4.h),
                  Icon(
                    Icons.chevron_right,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                ],
              )
            ],
          ),

          SizedBox(height: 2.h),

          Row(
            children: [
              NotificationChip(
                title: "SMS",
                selected: sms,
                icon: Icons.sms_outlined,
              ),
              SizedBox(width: 2.w),
              NotificationChip(
                title: "Push",
                selected: push,
                icon: Icons.notifications_none,
              ),
              SizedBox(width: 2.w),
              NotificationChip(
                title: "Email",
                selected: email,
                icon: Icons.email_outlined,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NotificationChip extends StatelessWidget {
  final String title;
  final bool selected;
  final IconData icon;

  const NotificationChip({
    super.key,
    required this.title,
    required this.selected,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
      decoration: BoxDecoration(
        color: selected
            ? AppColors.orangeColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: selected
              ? AppColors.orangeColor
              : AppColors.borderColor,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 17,
            color: AppColors.whiteColor,
          ),
          SizedBox(width: 1.w),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w600,
              fontSize: 11
            ),
          ),
        ],
      ),
    );
  }
}