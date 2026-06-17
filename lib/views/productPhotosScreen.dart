import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../controllers/productPhotosController.dart';
import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';

class ProductPhotosScreen extends StatefulWidget {
  const ProductPhotosScreen({super.key});

  @override
  State<ProductPhotosScreen> createState() => _ProductPhotosScreenState();
}

class _ProductPhotosScreenState extends State<ProductPhotosScreen> {
  final controller = Get.put(ProductPhotosController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  Widget body(){
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView(),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.dummyYearFord,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Text(
                    AppStrings.escapeSeFwd,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.orangeColor,
                            size: 18,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            AppStrings.kmAway,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: AppColors.greyColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 3.h,
                        width: 0.1.w,
                        color: AppColors.orangeColor,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: AppColors.orangeColor,
                            size: 18,
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            width: 28.w,
                            child: Text(
                              AppStrings.soldByClutch,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 3.w,
                              right: 3.w,
                              top: 1.3.h,
                              bottom: 1.3.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Text(
                              AppStrings.dummyData2,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            padding: EdgeInsets.only(
                              left: 3.w,
                              right: 3.w,
                              top: 1.3.h,
                              bottom: 1.3.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColors.darkGreen,
                                  radius: 10,
                                  child: Text(
                                    "G",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2.w),
                                CircleAvatar(
                                  backgroundColor: AppColors.yellow,
                                  radius: 10,
                                  child: Text(
                                    "Y",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.save_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.print_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                          SizedBox(width: 2.w),
                          Container(
                            padding: EdgeInsets.only(
                              left: 2.w,
                              right: 2.w,
                              top: 1.1.h,
                              bottom: 1.1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.cardBgColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: AppColors.dividerColor,
                                width: 1.2,
                              ),
                            ),
                            child: Icon(
                              Icons.share_outlined,
                              color: AppColors.orangeColor,
                              size: 22,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    width: 100.w,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 1.3.h, bottom: 1.3.h,left: 3.w,right: 3.w),
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
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
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: AppColors.whiteColor,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Container(
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
                          Icons.info_outlined,
                          color: AppColors.orangeColor,
                          size: 22,
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.pleaseNoteNonRunners,
                                maxLines: 4,
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                AppStrings.absolutelyNoPickups,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: AppColors.orangeColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  commonView(AppStrings.damagePhotos),
                  SizedBox(height: 2.h),
                  commonView(AppStrings.exteriorPhotos),
                  SizedBox(height: 2.h),
                  commonView(AppStrings.undercarriagePhotos),
                  SizedBox(height: 2.h),
                  commonView(AppStrings.interiorPhotos),
                  SizedBox(height: 2.h),
              Container(
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
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.vin,
                          style: TextStyle(
                              color: AppColors.orangeColor,
                              fontSize: 13
                          ),),
                        Text(AppStrings.dummyImeiNumber,
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 13
                          ),)
                      ],
                    ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 1.3.h,
                      bottom: 1.3.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.orangeColor,
                        width: 1.2,
                      ),
                    ),
                    child: Icon(Icons.copy,color: AppColors.orangeColor,size: 18,))
                  ],
                )),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  commonView(String title){
    return  Container(
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
        child: Column(
          children: [
            Row(
              children: [
                Container(height: 3.h,width: 0.5.w,color: AppColors.orangeColor,),
                SizedBox(
                  width: 4.w,
                ),
                Text(title,
                  style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 13
                ),)
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 10.h,
                    child: Obx(
                          () => ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.damageImages.length,
                        separatorBuilder: (_, __) => SizedBox(width: 2.w),
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              width: 17.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.borderColor,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                controller.damageImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 2.w),

                Container(
                  width: 15.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
