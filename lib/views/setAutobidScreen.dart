import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';
import '../utils/appStrings.dart';
import '../utils/imageUrls.dart';

class SetAutoBidScreen extends StatefulWidget {
  const SetAutoBidScreen({super.key});

  @override
  State<SetAutoBidScreen> createState() => _SetAutoBidScreenState();
}

class _SetAutoBidScreenState extends State<SetAutoBidScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  Widget body(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.3.h,
      ),
      child: Column(
        children: [
          bigImageView(),
          SizedBox(height: 1.h,),
          myAutobidView(),
          SizedBox(height: 1.h,),
          auctionView(AppStrings.auction, AppStrings.easternCanadaAuction, Icons.gavel_outlined),
          SizedBox(height: 1.h,),
          transportAuctionLocationView(AppStrings.transportEstimate, Icons.fire_truck_outlined),
          SizedBox(height: 1.h,),
          transportAuctionLocationView(AppStrings.auctionLocation, Icons.location_on_outlined)
        ],
      ),
    );
  }
  Widget myAutobidView() {
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
                  AppStrings.myAutobid,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  AppStrings.notSet,
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
                  AppStrings.startingBid,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.greyColor,
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  AppStrings.dummyPrice2,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.orangeColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
  Widget bigImageView() {
    return Container(
      width: 100.w,

      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageUrls.imageBaseUrl + ImageUrls.carUrl,
              width: double.infinity,
              height: 30.h,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.speed_outlined,
                        color: AppColors.orangeColor,
                        size: 18,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        AppStrings.dummyMileage2,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.5.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.w,
                      vertical: 1.3.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor:
                              AppColors.whiteColor,
                              child: Text(
                                "A",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.orangeColor,
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              AppStrings.setAutobid,
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppColors.whiteColor,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget auctionView(String title,String description,IconData iconName) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                  Text(
                    AppStrings.dummyData3,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.orangeColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,color: AppColors.orangeColor,size: 18,)
        ],
      ),
    );
  }
  Widget transportAuctionLocationView(String title,IconData iconName) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios_sharp,color: AppColors.orangeColor,size: 18,)
        ],
      ),
    );
  }

}
