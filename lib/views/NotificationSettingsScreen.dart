import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sizer/sizer.dart';
import '../controllers/NotificationSettingsController.dart';
import '../reusableWidgets/inAuctionView.dart';
import '../reusableWidgets/vehicleListingsView.dart';
import '../utils/appColors.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  NotificationSettingsController controller = Get.put(NotificationSettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 3.w,right: 3.w),
          child: Column(
            children: [
              Row(
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
                  SizedBox(width: 4.w),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Manage how you receive alerts",
                          style: TextStyle(
                            color: AppColors.greyColor,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Obx((){
                return Container(
                  padding: EdgeInsets.only(left: 1.w,right: 1.w,top: 0.5.h,bottom: 0.5.h),
                  decoration: BoxDecoration(
                    color: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      _tab(
                        title: "Vehicle Listings",
                        icon: Icons.directions_car_outlined,
                        selected: controller.selectedTab.value == 0,
                        onTap: () {
                          controller.selectedTab.value = 0;
                        },
                      ),
                      _tab(
                        title: "Auction",
                        icon: Icons.gavel_outlined,
                        selected: controller.selectedTab.value == 1,
                        onTap: () {
                          controller.selectedTab.value = 1;
                        },
                      ),
                      _tab(
                        title: "Post Sale",
                        icon: Icons.sell_outlined,
                        selected: controller.selectedTab.value == 2,
                        onTap: () {
                          controller.selectedTab.value = 2;
                        },
                      ),
                      _tab(
                        title: "Staff",
                        icon: Icons.people_outline,
                        selected: controller.selectedTab.value == 3,
                        onTap: () {
                          controller.selectedTab.value = 3;
                        },
                      ),
                    ],
                  ),
                );
              }),

              SizedBox(height: 2.h),
              Obx((){
                return controller.selectedTab.value == 0 ?
                Expanded(
                  child: ListView.separated(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return   VehicleListingsView(
                        title: "Watchlist",
                        icon: Icons.remove_red_eye_outlined,
                        description:
                        "You will be notified when a watched item is 10 cars away from going live",
                        sms: true,
                        push: true,
                        email: false,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 2.h);
                    },
                  ),
                ) :
                Expanded(child: InAuctionView());
              }),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _tab({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    bool selected = false,

  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(top: 1.h,bottom: 1.h),
          decoration: BoxDecoration(
            color: selected? AppColors.orangeColor : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.whiteColor,
                size: 20,
              ),
              SizedBox(height: 1.h),
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

