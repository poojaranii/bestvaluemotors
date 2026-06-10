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
      ));
  }

  Widget body(){
    return Column(
      children: [
        homeAppBarView(),
        searchBarView(),
        SizedBox(height: 3.h),
        commonView()
      ],
    );
  }

   Widget searchBarView(){
    return Container(
        height: 8.h,
        width: 100.w,
        padding: EdgeInsets.only(left: 3.w,right: 3.w),
        decoration: BoxDecoration(
            color: AppColors.cardBgColor,
            borderRadius: BorderRadius.circular(12),
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
   Widget commonView(){
    return Container(
        height: 10.h,
        width: 100.w,
        padding: EdgeInsets.only(left: 3.w,right: 3.w),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(12),
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
               height: 8.h,
               width: 8.h,
               decoration: BoxDecoration(
                 color: AppColors.cardBgColor,
                 borderRadius: BorderRadius.circular(12),
                 border: Border.all(
                   color: AppColors.orangeColor,
                   width: 1.2,
                 ),
               ),
               child:  Icon(Icons.arrow_forward_ios_sharp,size: 18),
             ),
             SizedBox(width: 6.w),
             Text("Browse",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
           ],
         ),
          Icon(Icons.arrow_forward_ios_sharp,size: 18)
        ],
      ),
    );
   }
}
