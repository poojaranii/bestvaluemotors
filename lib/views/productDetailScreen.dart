import 'package:bestvaluemotors/utils/appStrings.dart';
import 'package:bestvaluemotors/views/paintScreen.dart';
import 'package:bestvaluemotors/views/tiresScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../controllers/confirmAutobidController.dart';
import '../reusableWidgets/appBarView.dart';
import '../reusableWidgets/dialogView.dart';
import '../utils/appColors.dart';
import '../utils/imageUrls.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  ConfirmAutobidController controller = Get.put(ConfirmAutobidController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: body(),
    ));
  }

  Widget body(){
    return Container(
      margin: EdgeInsets.only(left: 2.w, right: 2.w),
      child: Column(
        children: [
          SizedBox(height: 1.h),
          commonAppBarView(),
          SizedBox(height: 2.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
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
                  SizedBox(height: 1.h),
                  Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                  SizedBox(height: 1.5.h),
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
                          GestureDetector(
                            onTap: (){
                              shareVehicleDialog(context);
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 1.5.h),
                  Container(
                    width: 100.w,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 1.3.h, bottom: 1.3.h),
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      borderRadius: BorderRadius.circular(4),
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
                  SizedBox(height: 1.5.h),
                  bigImageView(),
                  SizedBox(height: 1.h,),
                  myAutobidView(),
                  SizedBox(height: 1.h,),
                  auctionView(AppStrings.auction, AppStrings.easternCanadaAuction, Icons.gavel_outlined),
                  SizedBox(height: 1.h,),
                  transportAuctionLocationView(AppStrings.transportEstimate, Icons.fire_truck_outlined),
                  SizedBox(height: 1.h,),
                  transportAuctionLocationView(AppStrings.auctionLocation, Icons.location_on_outlined),
                  SizedBox(height: 1.h,),
                  claimAverageView(),
                  SizedBox(height: 1.h,),
                  paintTierView(),
                  SizedBox(height: 1.h,),
                  declarationView(),
                  SizedBox(height: 1.h,),
                  optionsView(),
                  SizedBox(height: 1.h,),
                  sellerNote(),
                  SizedBox(height: 1.h,),
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
                  SizedBox(height: 1.h,),
                  commonView1(AppStrings.damagePhotos),
                  SizedBox(height: 1.h,),
                  commonView1(AppStrings.exteriorPhotos),
                  SizedBox(height: 1.h,),
                  commonView1(AppStrings.undercarriagePhotos),
                  SizedBox(height: 1.h,),
                  commonView1(AppStrings.interiorPhotos),
                  SizedBox(height: 1.h,),
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
                  SizedBox(height: 1.h,),
                  Container(
                    width: 100.w,
                    padding: EdgeInsets.only(
                      left: 3.w,
                      right: 3.w,
                      top: 1.3.h,
                      bottom: 1.3.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.cardBgColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.dividerColor, width: 1.2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.dummyImeiNumber,
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          AppStrings.stock,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColors.greyColor,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          AppStrings.hyphenSign,
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.year,
                          AppStrings.dummyYear,
                          Icons.calendar_month_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.make,
                          AppStrings.ford,
                          Icons.settings_input_component_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.model,
                          AppStrings.escape,
                          Icons.directions_car_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.trim,
                          AppStrings.seFwd,
                          Icons.sell_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.mileage,
                          AppStrings.dummyMileage,
                          Icons.speed_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.bodyType,
                          AppStrings.suv,
                          Icons.airport_shuttle_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.exteriorColour,
                          AppStrings.gray,
                          Icons.format_paint_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.interiorColour,
                          AppStrings.gray,
                          Icons.event_seat_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.seatMaterial,
                          AppStrings.cloth,
                          Icons.chair_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.passengers,
                          AppStrings.noSaleCount,
                          Icons.people_outline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: commonView2(
                          AppStrings.transmission,
                          AppStrings.automatic,
                          Icons.settings_input_component_outlined,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: commonView2(
                          AppStrings.drivetrain,
                          AppStrings.fwd,
                          Icons.account_tree_outlined,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  commonView2(
                    AppStrings.doors,
                    AppStrings.may5,
                    Icons.door_front_door_outlined,
                  ),
                  SizedBox(height: 1.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget paintTierView() {
    return  Container(
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          children: [
            commonView(AppStrings.paint,Icons.format_paint_outlined,onTap: (){
              Get.to(PaintScreen());
            }),
            SizedBox(height: 1.5.h,),
            Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
            SizedBox(height: 1.5.h,),
            commonView(AppStrings.tires,Icons.tire_repair_outlined ,onTap: (){
              Get.to(TiresScreen());
            }),
            SizedBox(height: 1.5.h,),
            Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
            SizedBox(height: 1.5.h,),
            commonView(AppStrings.obdii,Icons.car_repair_outlined),
          ],
        ));
  }
  Widget commonView(String title, IconData iconName,{VoidCallback? onTap}){
    return Row(
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
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onTap,
            child: Icon(Icons.arrow_forward_ios_sharp, size: 16, color: AppColors.whiteColor)),
      ],
    );
  }
  Widget claimAverageView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
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
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                height: 14.h,
                decoration: BoxDecoration(
                  color: AppColors.cardBgColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.orangeColor)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Image.asset(
                ImageUrls.imageBaseUrl + ImageUrls.canadaLogo,
                  fit: BoxFit.fill,
                  width: 25.w,
                ),
                    SizedBox(height: 2.h),
                    Text(
                      AppStrings.claimsFound,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 3.w,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                height: 14.h,
                decoration: BoxDecoration(
                  color: AppColors.lightCardBgColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     CircularPercentIndicator(
                      radius: 20,
                      lineWidth: 4,
                      percent: 0.8,
                      backgroundColor: Colors.grey,
                      progressColor: AppColors.orangeColor,
                      ),
                    SizedBox(width: 6.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.dummyScore,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w800
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          AppStrings.average,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
  Widget declarationView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.declarations,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 2.h,),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightOrange,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.only(top: 1.5.h, bottom: 1.5.h),
          width: 45.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.build_outlined, size: 16, color: AppColors.bgColor),
              SizedBox(width: 1.2.w,),
              Text(
                AppStrings.engineNeedsRepair,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                  color: AppColors.bgColor,
                ),
              ),
            ],
          )
        )],
        ));
  }
  Widget optionsView() {
    return  Container(
        width: 100.w,
        padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 1.5.h, bottom: 1.5.h),
        decoration: BoxDecoration(
          color: AppColors.cardBgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.dividerColor,
            width: 1.2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.options,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 2.h,),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(child: optionCard(0)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(1)),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(child: optionCard(2)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(3)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(4)),
                  ],
                ),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(child: optionCard(5)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(6)),
                    SizedBox(width: 2.w),
                    Expanded(child: optionCard(7)),
                  ],
                ),
              ],
            )
          ],
        ));
  }
  Widget optionCard(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      height: 6.h,
      decoration: BoxDecoration(
        color: AppColors.lightCardBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            controller.optionIcons[index],
            size: 16,
            color: AppColors.whiteColor,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Text(
              controller.optionTitles[index],
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget sellerNote(){
    return Container(
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
            Icons.sticky_note_2_outlined,
            color: AppColors.orangeColor,
            size: 18,
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.sellerNotes,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: AppColors.orangeColor,
                  ),
                ),
                SizedBox(height: 1.5.h),
                Text(
                  AppStrings.engineDecDueToMisfireCode,
                  maxLines: 4,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
                SizedBox(height: 1.h),
                Container(height: 0.1.h, width: 100.w, color: AppColors.greyColor),
                SizedBox(height: 1.h),
                Text(
                  AppStrings.openingBidMessage,
                  maxLines: 4,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget commonView1(String title){
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
  Widget commonView2(String title, String description, IconData iconName) {
    return Container(
      padding: EdgeInsets.only(left: 2.w, right: 2.w, top: 1.h, bottom: 1.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.dividerColor, width: 1.2),
      ),
      child: Row(
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
            ],
          ),
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
          Icon(Icons.arrow_forward_ios_sharp,color: AppColors.whiteColor,size: 18,)
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
          Icon(Icons.arrow_forward_ios_sharp,color: AppColors.whiteColor,size: 18,)
        ],
      ),
    );
  }
}
