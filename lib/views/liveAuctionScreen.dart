import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class LiveAuctionScreen extends StatefulWidget {
  const LiveAuctionScreen({super.key});

  @override
  State<LiveAuctionScreen> createState() => _LiveAuctionScreenState();
}

class _LiveAuctionScreenState extends State<LiveAuctionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body:  body(),
    ));
  }

  Widget body(){
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView1(AppStrings.liveAuction,iconTrue: true),
          SizedBox(height: 2.h),
          Text(
            AppStrings.noLiveAuction,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.greyColor,
            ),
          ),
          SizedBox(height: 2.h),
          totalUnitView(
            "1703",
            AppStrings.totalUnitsUpcoming,
          ),
          SizedBox(height: 2.h),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.72,
              children: [
                _auctionCard(
                  units: '171',
                  day: '22',
                  month: 'JUNE',
                  time: '10:30 AM',
                  auctionName: 'AS IS Eastern Canada\nAuction',
                ),
                _auctionCard(
                  units: '636',
                  day: '22',
                  month: 'JUNE',
                  time: '2:00 PM',
                  auctionName: 'Western Canada Auction',
                ),
                _auctionCard(
                  units: '798',
                  day: '23',
                  month: 'JUNE',
                  time: '10:30 AM',
                  auctionName: 'Eastern Canada Auction',
                ),
                _auctionCard(
                  units: '2',
                  day: '24',
                  month: 'JUNE',
                  time: '10:30 AM',
                  auctionName: 'AS IS Eastern Canada\nAuction',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget totalUnitView(String title1,String description1) {
    return Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.2.h, bottom: 1.2.h),
        decoration: BoxDecoration(
          color: AppColors.orangeColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  description1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_sharp,size: 18)
          ],
        )
    );
  }

  Widget _auctionCard({
    required String units,
    required String day,
    required String month,
    required String time,
    required String auctionName,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.dividerColor,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.5.h,bottom: 1.5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        units,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 0.2.h),
                      const Text(
                        AppStrings.unitsUpcoming,
                        style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: AppColors.orangeColor,
                  size: 18,
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: AppColors.dividerColor,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day,
                  style: const TextStyle(
                    color: AppColors.orangeColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  month,
                  style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.watch_later_outlined,
                      color: AppColors.orangeColor,
                      size: 16,),
                    SizedBox(width: 1.w),
                    Text(
                      time,
                      style: const TextStyle(
                        color: AppColors.orangeColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                  ],
                ),

                SizedBox(height: 2.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on_outlined,
                      color: AppColors.orangeColor,
                      size: 16,),
                    SizedBox(width: 1.w),
                    Text(
                      auctionName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
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
