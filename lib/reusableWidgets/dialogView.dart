import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';

Future<dynamic> shareVehicleDialog(context) {
  return showDialog(
    context: context,
    barrierColor: Colors.transparent,
    builder: (_) => Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.borderColor),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 3.w,
                right: 3.w,
                top: 1.8.h,
                bottom: 1.8.h,
              ),
              child: Row(
                children: [
                  Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.orangeColor),
                    ),
                    child: const Icon(
                      Icons.share_outlined,
                      color: AppColors.orangeColor,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  const Expanded(
                    child: Text(
                      "Share Vehicle",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      width: 10.w,
                      height: 10.w,
                      decoration: BoxDecoration(
                        color: AppColors.lightCardBgColor,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child: const Icon(
                        Icons.close,
                        color: AppColors.whiteColor,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: AppColors.dividerColor, height: 1),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Share Vehicle Listing",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  const Text(
                    "Share this vehicle instantly through email, SMS, or copy the link.",
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 10,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: AppColors.lightCardBgColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 2.w),
                        const Icon(
                          Icons.link,
                          color: AppColors.whiteColor,
                          size: 18,
                        ),
                        SizedBox(width: 2.w),
                        const Expanded(
                          child: Text(
                            "https://vehicleapp.com/share/vehicle123",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.copy, size: 18),
                            label: const Text(
                              "Copy",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.orangeColor,
                              foregroundColor: AppColors.whiteColor,
                              elevation: 0,
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 6.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.email_outlined, size: 18),
                            label: const Text(
                              "Share via Email",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.orangeColor,
                              foregroundColor: AppColors.whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: SizedBox(
                          height: 6.h,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.sms_outlined, size: 18),
                            label: const Text(
                              "Share via SMS",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.darkGreen,
                              foregroundColor: AppColors.whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.borderColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ios_share_outlined,
                            color: AppColors.greyColor,
                            size: 18,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "More Share Options",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
