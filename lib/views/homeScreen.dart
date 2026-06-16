import 'package:bestvaluemotors/reusableWidgets/imageView.dart';
import 'package:bestvaluemotors/utils/appColors.dart';
import 'package:bestvaluemotors/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sizer/sizer.dart';
import '../controllers/homeController.dart';
import '../reusableWidgets/appBarView.dart';
import '../utils/imageUrls.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }

  Widget body(){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 3.w,right: 3.w),
        child: Column(
          children: [
            SizedBox(height: 1.h),
            homeAppBarView(),
            SizedBox(height: 2.h),
            searchBarView(),
            SizedBox(height: 1.5.h),
            commonView(AppStrings.browse,Icons.dashboard_outlined),
            SizedBox(height: 1.h),
            commonView(AppStrings.myBlock,Icons.directions_car_outlined),
            SizedBox(height: 1.h),
            commonView(AppStrings.myMarketGuide,Icons.auto_graph_sharp),
            SizedBox(height: 1.5.h),
           cardView(),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.recommendedForYou,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                Text(AppStrings.seeAll,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.orangeColor),),
              ],
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 20.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return vehicleCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

   Widget searchBarView(){
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
              Icon(Icons.search_sharp,color: AppColors.orangeColor,),
              SizedBox(width: 3.w),
              Text(AppStrings.searchAll),
            ],
          ),
          Icon(Icons.photo_camera_outlined,color: AppColors.orangeColor,),
        ],
      ),
    );
  }
   Widget commonView(String title , IconData iconName){
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
                 gradient:  LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     AppColors.orangeColor.withOpacity(0.20),
                     AppColors.orangeColor.withOpacity(0.10),
                     AppColors.orangeColor.withOpacity(0.08),
                   ],
                 ),
                   border: Border.all(
                     color: AppColors.orangeColor,
                     width: 0.2,
                   ),
               ),
               child:  Icon(iconName,size: 18,color: AppColors.orangeColor,),
             ),
             SizedBox(width: 4.w),
             Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
           ],
         ),
          Icon(Icons.arrow_forward_ios_sharp,size: 15)
        ],
      ),
    );
   }
   Widget commonView1(String title,String description,IconData iconName){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
              decoration: BoxDecoration(
                color: AppColors.cardBgColor,
                borderRadius: BorderRadius.circular(8),
                gradient:  LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.orangeColor.withOpacity(0.20),
                    AppColors.orangeColor.withOpacity(0.10),
                    AppColors.orangeColor.withOpacity(0.08),
                  ],
                ),
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
                Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.orangeColor),),
                Text(description,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
              ],
            )
          ],
        ),
        Icon(Icons.arrow_forward_ios_sharp,size: 15)
      ],
    );
   }
   Widget cardView(){
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          commonView1(AppStrings.dummyNumber,AppStrings.swipeNewUnits,Icons.layers_outlined),
          SizedBox(height: 1.5.h),
          Container(color: AppColors.dividerColor,width: 100.w,height: 0.1.h),
          SizedBox(height: 1.5.h),
          commonView1(AppStrings.purchasedCount,AppStrings.timedAuction,Icons.gavel_outlined),
          SizedBox(height: 1.5.h),
          Container(color: AppColors.dividerColor,width: 100.w,height: 0.1.h),
          SizedBox(height: 1.5.h),
          commonView1(AppStrings.dummyYear,AppStrings.runList,Icons.article_outlined),
          SizedBox(height: 1.5.h),
          Container(color: AppColors.dividerColor,width: 100.w,height: 0.1.h),
          SizedBox(height: 1.5.h),
          commonView1(AppStrings.dummyDate,AppStrings.liveAuction,Icons.podcasts_outlined),
          SizedBox(height: 1.5.h),
          Container(color: AppColors.dividerColor,width: 100.w,height: 0.1.h),
          SizedBox(height: 1.5.h),
          commonView1(AppStrings.purchasedCount,AppStrings.buyNow,Icons.shopping_cart_outlined),
        ],
      ),
    );
   }

  Widget vehicleCard() {
    return Container(
      width: 40.w,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [

            /// Car Image
            Positioned.fill(
              child: Image.asset(
                ImageUrls.imageBaseUrl + ImageUrls.carUrl,
                fit: BoxFit.fill,
              ),
            ),

            /// Dark Overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(.15),
                      Colors.black.withOpacity(.35),
                      Colors.black.withOpacity(.85),
                    ],
                  ),
                ),
              ),
            ),

            /// Price Tag
            Positioned(
              top: 1.5.h,
              left: 3.w,
              child: Container(
                padding: EdgeInsets.only(left: 2.w, right: 2.w,top: 0.5.h,bottom: 0.5.h),
                decoration: BoxDecoration(
                    color: AppColors.bgColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "\$1,200",
                  style: const TextStyle(
                    color: AppColors.orangeColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 1.5.h,
              right: 3.w,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.bgColor.withOpacity(0.7),
                child: Icon(
                  Icons.favorite_border,
                  color: AppColors.whiteColor,
                  size: 17,
                ),
              ),
            ),

            /// Bottom Content
            Positioned(
              left: 3.w,
              bottom: 1.5.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "DIGITAL LANE",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 0.3.h),
                  Text(
                    "L-34567 dtyulhj",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(height: 0.3.h),

                  Row(
                    children: [
                      Text(
                        "1234567",
                        style: const TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 10,
                        ),
                      ),

                      SizedBox(width: 2.w),

                      const CircleAvatar(
                        radius: 3,
                        backgroundColor: AppColors.orangeColor,
                      ),

                       SizedBox(width: 2.w),

                      Text(
                        "204 L",
                        style: const TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
