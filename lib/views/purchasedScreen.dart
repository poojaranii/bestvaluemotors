import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sizer/sizer.dart';
import '../controllers/purchaseController.dart';
import '../reusableWidgets/appBarView.dart';
import '../utils/appColors.dart';
import '../utils/appStrings.dart';
import '../utils/imageUrls.dart';

class PurchasedScreen extends StatefulWidget {
  const PurchasedScreen({super.key});

  @override
  State<PurchasedScreen> createState() => _PurchasedScreenState();
}

class _PurchasedScreenState extends State<PurchasedScreen> {
  PurchaseController controller =Get.put(PurchaseController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: body(),
    ));
  }

  Widget body(){
    return Padding(
      padding: EdgeInsets.only(left: 4.w, right: 4.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView1(AppStrings.purchased,iconTrue: true),
          SizedBox(height: 2.h),
          searchBarView(),
          SizedBox(height: 2.h),
          Expanded(
            child: ListView.separated(
              itemCount: controller.purchasedList.length,
              itemBuilder: (context, index) {
                final item = controller.purchasedList[index];
                return buildPurchasedCard(item);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 2.h);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget searchBarView(){
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.3.h,bottom: 1.3.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: AppColors.dividerColor,
          width: 1.2,
        ),
      ),
      child:  Row(
        children: [
          Icon(Icons.search_sharp,color: AppColors.whiteColor,size: 18),
          SizedBox(width: 3.w),
          Text(AppStrings.searchAll,style: TextStyle(fontSize: 12),),
        ],
      ),
    );
  }
  Widget buildPurchasedCard(Map<String, dynamic> item) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.h,bottom: 1.h),
            child: Row(
              children: [
                if (item["lane"].toString().isNotEmpty)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.w,
                      vertical: 0.6.h,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.greyColor,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      item["lane"],
                      style: const TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 10
                      ),
                    ),
                  ),
                 SizedBox(width: 2.w),
                ...item["badges"].map<Widget>(
                      (badge) => Container(
                    margin:  EdgeInsets.only(right: 2.w),
                    width: 5.w,
                    height: 5.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: badge == "G"
                          ? AppColors.darkGreen
                          : badge == "Y"
                          ? AppColors.yellow
                          : Colors.red,
                    ),
                    child: Center(
                      child: Text(
                        badge,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 8
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Text(
                    "${item["distance"]} • ${item["seller"]}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: AppColors.greyColor,
                      fontSize: 12
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h,bottom: 1.h,left: 3.w,right: 3.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"],
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        item["subTitle"],
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        item["mileage"],
                        style: const TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  item["price"],
                  style: const TextStyle(
                    color: AppColors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.dividerColor,
            height: 1,
          ),
          SizedBox(height: 0.8.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Text(
                item["auction"],
                style: const TextStyle(
                    color: AppColors.greyColor,
                    fontSize: 12
                ),
              ),
            ),
          ),
          SizedBox(height: 0.8.h),
          Container(
            width: double.infinity,
            padding:  EdgeInsets.symmetric(
              horizontal: 3.w,
              vertical: 1.5.h,
            ),
            decoration: const BoxDecoration(
              color: AppColors.orangeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_month_outlined,
                  color: AppColors.whiteColor,
                  size: 18,
                ),
                 SizedBox(width: 2.w),
                Text(
                  item["date"],
                  style: const TextStyle(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 13
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
