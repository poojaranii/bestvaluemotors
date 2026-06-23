import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';
import '../utils/appStrings.dart';
import '../utils/imageUrls.dart';

class RunListScreen extends StatefulWidget {
  const RunListScreen({super.key});

  @override
  State<RunListScreen> createState() => _RunListScreenState();
}

class _RunListScreenState extends State<RunListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 3.w,right: 3.w),
          child: Column(
            children: [
              appBarView(),
               SizedBox(height: 2.h),
              searchBarView(),
              SizedBox(height: 2.h),
              tabsView(),
              SizedBox(height: 2.h),
              Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return   _buildVehicleCard(
                      title: '2021 GMC',
                      subtitle: 'Sierra 2500HD 4WD Crew"',
                      image:
                      ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                      mileage: '187,673 km',
                      price: '\$32,000',
                      score: '95',
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 2.h);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------------- HEADER ----------------

  Widget appBarView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Column(
          children: const [
            Text(
              'Run List',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'RUN NUMBER - LOW TO HIGH',
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 10
              ),
            ),
          ],
        ),
        const Icon(
          Icons.tune,
          color: AppColors.orangeColor, size: 18),
      ],
    );
  }

  // ---------------- SEARCH ----------------

  Widget searchBarView() {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.borderColor)
      ),
      padding: EdgeInsets.only(left: 2.w,right: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.search, color: AppColors.greyColor,size: 18),
              SizedBox(width: 2.w),
              Text(
                'Search All',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Icon(Icons.qr_code_scanner,
              color: AppColors.orangeColor,size: 18),
        ],
      ),
    );
  }
  // ---------------- VEHICLE CARD ----------------
  Widget tabsView() {
    final tabs = [
      {"icon": Icons.layers, "count": "17,57", "title": "All"},
      {"icon": Icons.person_2_outlined, "count": "0", "title": "Mine"},
      {"icon": Icons.gavel_outlined, "count": "0", "title": "Autobids"},
      {"icon": Icons.remove_red_eye_outlined, "count": "1", "title": "Watching"},
      {"icon": Icons.bookmark_border, "count": "5", "title": "Unreserved"},
    ];

    return Container(
      height: 12.h,
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) => VerticalDivider(
          color: AppColors.dividerColor,
          thickness: 1,
          width: 6.w,
        ),
        itemBuilder: (context, index) {
          final item = tabs[index];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item["icon"] as IconData,
                  color: AppColors.greyColor,
                  size: 18,
                ),
                SizedBox(height: 0.5.h),
                Text(
                  item["count"] as String,
                  style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 0.3.h),
                Text(
                  item["title"] as String,
                  style: const TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  Widget _buildVehicleCard({
    required String title,
    required String subtitle,
    required String image,
    required String mileage,
    required String price,
    required String score,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.5.h,bottom: 1.5.h),
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
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 0.2.w,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.asset(
                        image,
                        width: 28.w,
                        height: 20.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.1.h,
                    left: 0.2.w,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bgColor.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                      ),
                      child: Text(
                        "Jun 22",
                        style: const TextStyle(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 10
                        ),
                      ),
                    ),),
                  Positioned(
                    top: 0.1.h,
                    right: 0.2.w,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bgColor.withOpacity(0.8),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6),
                          bottomLeft: Radius.circular(6),
                        ),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors.darkGreen,
                            radius: 8,
                            child: Text(
                              "G",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 8,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.w),
                          CircleAvatar(
                            backgroundColor: AppColors.yellow,
                            radius: 8,
                            child: Text(
                              "Y",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),)
                ],
              ),

              SizedBox(width: 3.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined,size: 17,color: AppColors.orangeColor,),
                        SizedBox(width: 1.w,),
                        Text(
                          "901 km away",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:  TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 2.w,),
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: AppColors.orangeColor,
                        ),
                        SizedBox(width: 2.w,),
                        Expanded(
                          child: Text(
                            "Toronto Auto Group - Thunder",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:  TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          price,
                          textAlign: TextAlign.end,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 12,
                      ),
                    ),

                    SizedBox(height: 1.h),

                    Text(
                      mileage,
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: 12,
                      ),
                    ),

                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.green,
                            ),
                          ),
                          child: Text(
                            "V",
                            style: const TextStyle(
                              color: AppColors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.orangeColor,
                            ),
                          ),
                          child: Text(
                            score,
                            style: const TextStyle(
                              color: AppColors.orangeColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: AppColors.yellow,
                            ),
                          ),
                          child: Text(
                            "A-1",
                            style: const TextStyle(
                              color: AppColors.yellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.whiteColor,
                      radius: 10,
                      child: Text(
                        "A",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 10,
                          color: AppColors.orangeColor,
                        ),
                      ),
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      AppStrings.setAutobid,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 3.w,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 1.3.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: AppColors.greyColor,
                    width: 0.2.w
                  ),
                ),
                child: Icon(Icons.star_border,color: AppColors.greyColor,size: 18,)
              ),
            ],
          ),
          Divider(color: AppColors.dividerColor,),
          Row(
            children: [
              Icon(Icons.gavel_outlined,color: AppColors.orangeColor,size: 18,),
              SizedBox(
                width: 2.w,
              ),
              Text(
                AppStrings.asIsEasternAuction,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: AppColors.greyColor,
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
