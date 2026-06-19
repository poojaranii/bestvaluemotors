import 'package:bestvaluemotors/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sizer/sizer.dart';
import '../controllers/confirmAutobidController.dart';
import '../utils/appColors.dart';
import '../utils/imageUrls.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ConfirmAutoBidScreen extends StatefulWidget {
  const ConfirmAutoBidScreen({super.key});

  @override
  State<ConfirmAutoBidScreen> createState() => _ConfirmAutoBidScreenState();
}

class _ConfirmAutoBidScreenState extends State<ConfirmAutoBidScreen> {
  ConfirmAutobidController controller = Get.put(ConfirmAutobidController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  Widget body(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 2.w, right: 2.w),
        child: Column(
          children: [
            SizedBox(height: 3.h,),
            claimAverageView(),
            SizedBox(height: 1.5.h,),
            paintTierView(),
            SizedBox(height: 1.5.h,),
            declarationView(),
            SizedBox(height: 1.5.h,),
            optionsView(),
            SizedBox(height: 1.5.h,),
            sellerNote(),
            SizedBox(height: 3.h,),
          ],
        ),
      ),
    );
  }

  Widget paintTierView() {
    return  Container(
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          children: [
            commonView(AppStrings.paint,Icons.format_paint_outlined),
            SizedBox(height: 1.5.h,),
            Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
            SizedBox(height: 1.5.h,),
            commonView(AppStrings.tires,Icons.tire_repair_outlined ),
            SizedBox(height: 1.5.h,),
            Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
            SizedBox(height: 1.5.h,),
            commonView(AppStrings.obdii,Icons.car_repair_outlined),
          ],
        ));
  }
  Widget commonView(String title, IconData iconName){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(iconName, size: 22, color: AppColors.whiteColor),
            SizedBox(width: 4.w),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        Icon(Icons.arrow_forward_ios_sharp, size: 16, color: AppColors.whiteColor),
      ],
    );
  }
  Widget claimAverageView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.2.h, bottom: 1.2.h),
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
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                height: 15.h,
                decoration: BoxDecoration(
                  color: AppColors.cardBgColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.orangeColor)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Image.asset(
                ImageUrls.imageBaseUrl + ImageUrls.canadaLogo,
                  fit: BoxFit.fill,
                  width: 25.w,
                ),
                    SizedBox(height: 2.h),
                    Text(
                      AppStrings.claimsFound,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 3.w,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                height: 15.h,
                decoration: BoxDecoration(
                  color: AppColors.lightCardBgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     CircularPercentIndicator(
                      radius: 20,
                      lineWidth: 4,
                      percent: 0.8,
                      backgroundColor: Colors.grey,
                      progressColor: AppColors.orangeColor,
                      ),
                    SizedBox(width: 6.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.dummyScore,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          AppStrings.average,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
  Widget declarationView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.declarations,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 2.h,),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightOrange,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.only(top: 1.5.h, bottom: 1.5.h),
          width: 45.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.build_outlined, size: 16, color: AppColors.bgColor),
              SizedBox(width: 1.2.w,),
              Text(
                AppStrings.engineNeedsRepair,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: AppColors.bgColor,
                ),
              ),
            ],
          )
        )],
        ));
  }
  Widget optionsView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.options,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 2.h,),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: optionCard(0)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(1)),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(child: optionCard(2)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(3)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(4)),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(child: optionCard(5)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(6)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(7)),
                  ],
                ),
              ],
            )
          ],
        ));
  }
  Widget optionCard(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      height: 6.h,
      decoration: BoxDecoration(
        color: AppColors.lightCardBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            controller.optionIcons[index],
            size: 16,
            color: AppColors.whiteColor,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Text(
              controller.optionTitles[index],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget sellerNote(){
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(
        left: 3.w,
        right: 3.w,
        top: 1.5.h,
        bottom: 1.5.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.sticky_note_2_outlined,
            color: AppColors.orangeColor,
            size: 18,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.sellerNotes,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.orangeColor,
                  ),
                ),
                SizedBox(height: 1.5.h),
                Text(
                  AppStrings.engineDecDueToMisfireCode,
                  maxLines: 4,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
                SizedBox(height: 1.h),
                Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                SizedBox(height: 1.h),
                Text(
                  AppStrings.openingBidMessage,
                  maxLines: 4,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
