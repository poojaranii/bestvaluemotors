import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';
import '../utils/appStrings.dart';
import '../utils/imageUrls.dart';

class RecentActivityScreen extends StatefulWidget {
  const RecentActivityScreen({super.key});

  @override
  State<RecentActivityScreen> createState() => _RecentActivityScreenState();
}

class _RecentActivityScreenState extends State<RecentActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: body(),
    ));
  }
  Widget body(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 3.w,right: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           commonView(AppStrings.dummyNumber,AppStrings.purchased,Icons.shopping_cart_outlined),
           SizedBox(height: 1.h),
           commonView("3",AppStrings.noSale,Icons.sell_outlined),
           SizedBox(height: 2.h),
           Text(AppStrings.recentActivity,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: AppColors.orangeColor),),
           SizedBox(height: 1.h),
           recentActivityView(),
           SizedBox(height: 3.h),
         ],
        ),
      ),
    );
  }

  Widget commonView(String title,String description,IconData iconName){
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.3.h,bottom: 1.3.h),
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
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
                decoration: BoxDecoration(
                  color: AppColors.cardBgColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.orangeColor,
                    width: 0.2,
                  ),
                ),
                child:  Icon(iconName,size: 18,color: AppColors.orangeColor,),
              ),
              SizedBox(width: 4.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.whiteColor),),
                  Text(description,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,size: 15,color: AppColors.orangeColor)
        ],
      ),
    );
  }


  Widget recentActivityView() {
    return Column(
      children: [
        timelineItem(
          day: "5",
          month: "MAY",
          title: "Purchased",
          date: "Purchased April 30, 2026",
          vehicle: "2016 Ford",
          subtitle: "Edge 4dr Titanium AWD",
          amount: "\$4,000",
        ),

        timelineItem(
          day: "29",
          month: "APR",
          title: "Purchased",
          date: "Purchased April 8, 2026",
          vehicle: "2015 Ford",
          subtitle: "Super Duty F-250 SRW",
          amount: "\$5,000",
        ),

        timelineItem(
          day: "27",
          month: "APR",
          title: "Purchased",
          date: "Purchased April 27, 2026",
          vehicle: "2021 Ram",
          subtitle: "1500 Classic Outdoorsman",
          amount: "\$7,500",
        ),
      ],
    );
  }

  Widget timelineItem({
    required String day,
    required String month,
    required String title,
    required String date,
    required String vehicle,
    required String subtitle,
    required String amount,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          timelineDate(day, month),
          SizedBox(width: 4.w),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 2.h),
              padding: EdgeInsets.only(left: 3.w,right: 3.w),
              decoration: BoxDecoration(
                color: AppColors.cardBgColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      Text(
                        amount,
                        style: TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: .2.h),
                  Text(
                    date,
                    style: TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 16.w,
                          height: 16.w,
                          child: Image.asset(
                            ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 3.w),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Divider(color: AppColors.dividerColor,),
                            Text(
                              vehicle,
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              subtitle,
                              style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget timelineDate(String day, String month) {
    return Column(
      children: [
        Container(
          width: 14.w,
          height: 14.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.orangeColor,
              width: 0.2.w,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                month,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),

        Container(
          width: 0.2.w,
          height: 18.h,
          color:AppColors.orangeColor,
        ),
      ],
    );
  }
}
