import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

Future<dynamic> shareVehicleDialog(BuildContext context) {
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
                  Expanded(
                    child: Text(
                      AppStrings.shareVehicle,
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
                  Text(
                    AppStrings.shareVehicleListing,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 1.h),
                   Text(
                    AppStrings.shareVehicleListingInstantly,
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
                            AppStrings.shareLink,
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
                            label: Text(
                              AppStrings.copy,
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
                              AppStrings.shareViaEmail,
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
                              AppStrings.shareViaSms,
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
                            AppStrings.moreShareOptions,
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

Future<void> showDropOffLocationDialog(BuildContext context) async {
  String? selectedCompany;
  String? selectedLocation;

  await showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.8),
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.cardBgColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.borderColor,
                ),
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
                            Icons.location_on,
                            color: AppColors.orangeColor,
                            size: 18,
                          ),
                        ),
                        SizedBox(width: 2.w),
                        const Expanded(
                          child: Text(
                            AppStrings.selectDropOffLocation,
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

                //  SizedBox(height: 2.h),

                  Container(
                    height: 0.2.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: AppColors.dividerColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 1.8.h,
                      bottom: 1.8.h,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: const TextSpan(
                              text: 'Select Company ',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: AppColors.orangeColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: AppColors.cardBgColor,
                              value: selectedCompany,
                              isExpanded: true,
                              hint: const Text(
                                AppStrings.selectCompany,
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontSize: 13
                                ),
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.orangeColor,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: AppStrings.bestValueMotors,
                                  child: Text(
                                    AppStrings.bestValueMotors,
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                        fontSize: 13
                                    ),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedCompany = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: const TextSpan(
                              text: AppStrings.selectLocation,
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  text: ' *',
                                  style: TextStyle(
                                    color: AppColors.orangeColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          decoration: BoxDecoration(
                            color: AppColors.bgColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.borderColor,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              dropdownColor: AppColors.cardBgColor,
                              value: selectedLocation,
                              isExpanded: true,
                              hint: const Text(
                                AppStrings.selectLocation,
                                style: TextStyle(
                                    color: AppColors.greyColor,
                                    fontSize: 13
                                ),
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.orangeColor,
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: AppStrings.newYork,
                                  child: Text(
                                    AppStrings.newYork,
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                        fontSize: 13
                                    ),
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedLocation = value;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Container(
                          padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor.withOpacity(.08),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.orangeColor.withOpacity(.3),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: .start,
                            crossAxisAlignment: .start,
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: AppColors.orangeColor,
                                size: 18,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  AppStrings.pleaseVerifyTheSelected,
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.h),
                        SizedBox(
                          width: double.infinity,
                          height: 6.h,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.location_on),
                            label: const Text(
                              AppStrings.confirmLocation,
                              style: TextStyle(
                                fontSize: 14,
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
                        SizedBox(height: 1.h),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
