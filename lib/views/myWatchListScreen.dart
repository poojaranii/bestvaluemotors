import 'package:bestvaluemotors/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';

class MyWatchListScreen extends StatefulWidget {
  const MyWatchListScreen({super.key});

  @override
  State<MyWatchListScreen> createState() => _MyWatchListScreenState();
}

class _MyWatchListScreenState extends State<MyWatchListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppStrings.myWatchlist,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),),
          backgroundColor: AppColors.bgColor,
          leading: Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.orangeColor,
                  width: 1.2,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back,color: AppColors.orangeColor,size: 18),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: body()
    );
  }

  Widget body() {
    return Column(
      children: [
        SizedBox(height: 2.h,),
        listView(),
      ],
    );
  }

  Widget listView() {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return listItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 2.h);
        },
        itemCount: 2,
      ),
    );
  }

  Widget listItem() {
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h,bottom: 2.h),
      margin: EdgeInsets.only(left: 2.w,right: 2.w),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 2.w,
                  right: 2.w,
                  top: 0.5.h,
                  bottom: 0.5.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: AppColors.orangeColor.withOpacity(0.7),
                  ),
                ),
                child: Text(
                  'B-195',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 2.w,
                  right: 2.w,
                  top: 0.5.h,
                  bottom: 0.5.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: AppColors.orangeColor.withOpacity(0.7),
                  ),
                ),
                child: Text(
                  '88',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppColors.orangeColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Text(
            AppStrings.runList,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.orangeColor,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            AppStrings.vehicleTitle,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            AppStrings.vehicleSubtitle,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            AppStrings.dummyImeiNumber,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: 1.5.h),
          Container(
            width: 100.w,
            height: 0.1.h,
            color: AppColors.orangeColor,
          ),
          SizedBox(height: 1.5.h),
          Text(
            AppStrings.easternCanadaAuction,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.orangeColor,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            AppStrings.dummyDate,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
