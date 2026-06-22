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
    return Scaffold(
      backgroundColor: const Color(0xFF050505),
      body: SafeArea(
        child: Column(
          children: [
            appBarView(),
             SizedBox(height: 2.h),
            searchBarView(),
            SizedBox(height: 2.h),
          Expanded(
            child: ListView(
              children: [
                _buildVehicleCard(
                  title: '2021 GMC',
                  subtitle: 'Sierra 2500HD 4WD Crew"',
                  image:
                  ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                  mileage: '187,673 km',
                  price: '\$32,000',
                  score: '95',
                ),

                _buildVehicleCard(
                  title: '2012 BMW',
                  subtitle: 'X1 AWD 4dr 28i',
                  image:
                  ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                  mileage: '133,327 km',
                  price: '\$1,000',
                  score: '70',
                ),
              ],
            ),
            ),
          ],
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      image,
                      width: 30.w,
                      height: 17.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(width: 3.w),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(height: 1.h),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          color: AppColors.greyColor,
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
                          score,
                          style: const TextStyle(
                            color: AppColors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(
                child: Text(
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
              ),
            ],
          ),

          const SizedBox(height: 16),
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
        ],
      ),
    );
  }
}
