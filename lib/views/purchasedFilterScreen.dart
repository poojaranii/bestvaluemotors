import 'package:bestvaluemotors/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/appColors.dart';

class PurchasedFilterScreen extends StatefulWidget {
  const PurchasedFilterScreen({super.key});

  @override
  State<PurchasedFilterScreen> createState() => _PurchasedFilterScreenState();
}

class _PurchasedFilterScreenState extends State<PurchasedFilterScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _bottomButton(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height:1.h),
            _appBar(),
            SizedBox(height:2.h),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(left: 3.w,right: 3.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _search(),
                     SizedBox(height:2.h),
                    _title(AppStrings.savedVehicleFilters),
                    SizedBox(height:1.h),
                    _dateCard(),
                    SizedBox(height:2.h),
                    _title(AppStrings.distanceKm),
                    SizedBox(height:1.h),
                    _distance(),
                    SizedBox(height:2.h),
                    _title(AppStrings.vehicleFilters),
                    SizedBox(height:1.h),
                    _vehicleCard(),
                    SizedBox(height:2.h),
                    _title(AppStrings.more),
                    SizedBox(height:1.h),
                    _moreCard(),
                    SizedBox(height:14.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _appBar(){
    return Padding(
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      child: Row(
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
          const Spacer(),
          Text(
            AppStrings.purchased,
            style:TextStyle(
                color:AppColors.whiteColor,
                fontSize:15,
                fontWeight:FontWeight.w600
            ),
          ),
           SizedBox(width:2.w),
          const Icon(
            Icons.info_outline,
            color:AppColors.orangeColor,
            size:18,
          ),

          const Spacer(),

          const Icon(
            Icons.close,
            color:AppColors.orangeColor,
            size:18,
          )

        ],
      ),
    );
  }



  Widget _search(){

    return Container(
      height:7.h,
      decoration:_box(),
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      child:Row(
        children:[
          const Icon(
            Icons.search,
            color:AppColors.greyColor,
            size:18,
          ),

          SizedBox(width:2.w),

          const Expanded(
            child:Text(
              AppStrings.searchAll,
              style:TextStyle(
                  color:AppColors.greyColor,
                  fontSize:14
              ),
            ),
          ),


          const Icon(
            Icons.tune,
            color:AppColors.orangeColor,
            size:18,
          ),

        ],
      ),
    );
  }




  Widget _dateCard(){

    return Container(
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      decoration:_box(),

      child:Row(
        children:[

          Expanded(
              child:_dateItem(AppStrings.dateFrom)
          ),


          Container(
            height:60,
            width:1,
            color:AppColors.borderColor,
          ),

           SizedBox(width: 2.w,),
          Expanded(
              child:_dateItem(AppStrings.dateTo)
          )

        ],
      ),
    );
  }



  Widget _dateItem(String title){

    return Row(
      children:[

        CircleAvatar(
          radius:20,
          backgroundColor:AppColors.orangeColor.withOpacity(.15),
          child:const Icon(
            Icons.calendar_month,
            color:AppColors.orangeColor,
            size: 18,
          ),
        ),


        SizedBox(width:2.w),


        Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:[

            Text(
              title,
              style:const TextStyle(
                  color:AppColors.greyColor,
                  fontSize: 13,
                fontWeight: FontWeight.w400
              ),
            ),


            const Text(
              AppStrings.anyDate,
              style:TextStyle(
                  color:AppColors.whiteColor,
                  fontSize:15,
                  fontWeight: FontWeight.w500
              ),
            )

          ],
        )

      ],
    );
  }





  Widget _distance(){
    return   SizedBox(
      height: 6.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            width:55,
            height:45,
            alignment:Alignment.center,
            decoration:BoxDecoration(
                color: AppColors.cardBgColor,
                borderRadius:BorderRadius.circular(10),
                border:Border.all(
                    color:AppColors.borderColor
                )
            ),
            child:Text(
              "10",
              style:const TextStyle(
                  color:AppColors.whiteColor
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 2.w);
        },
      ),
    );
  }




  Widget _vehicleCard(){
    return Container(
      padding:const EdgeInsets.all(18),
      decoration:_box(),
      child:Column(
        children:[
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              const Text(
                AppStrings.mileageKm,
                style:TextStyle(
                    color:AppColors.greyColor,
                    fontSize:15
                ),
              ),
              const Text(
                AppStrings.any,
                style:TextStyle(
                    color:AppColors.whiteColor,
                    fontSize:15
                ),
              )
            ],
          ),
          SizedBox(height:1.h),
          Slider(
            padding: EdgeInsets.zero,
            value:.5,
            onChanged:(v){},
            activeColor:AppColors.orangeColor,
          ),
          SizedBox(height:1.h),
          const Align(
            alignment:Alignment.centerLeft,
            child:Text(
              AppStrings.year,
              style:TextStyle(
                  color:AppColors.greyColor,
                  fontSize:15
              ),
            ),
          ),
          SizedBox(height:1.h),
          Row(
            children:[
              Expanded(
                child:_field(AppStrings.from),
              ),
              const SizedBox(width:15),
              Expanded(
                child:_field(AppStrings.to),
              )
            ],
          ),
          const SizedBox(height:12),
          _field(AppStrings.anyMake),
          const SizedBox(height:12),
          _field(AppStrings.noModel),
        ],
      ),
    );
  }





  Widget _field(String text){
    return Container(
      height:7.h,
      padding:EdgeInsets.symmetric(horizontal:3.w),
      decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(6),
          border:Border.all(
              color:AppColors.borderColor
          )
      ),
      child:Row(
        children:[
          const Icon(
            Icons.directions_car_outlined,
            color:AppColors.greyColor,
            size: 18,
          ),
          SizedBox(width:2.w),
          Expanded(
            child:Text(
              text,
              style:const TextStyle(
                  color:AppColors.greyColor,
                  fontSize:14
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color:AppColors.greyColor,
            size: 18,
          )
        ],
      ),
    );
  }





  Widget _moreCard(){

    return Container(
      decoration:_box(),

      child:Column(
        children:[

          _moreTile(
              Icons.gavel_outlined,
              AppStrings.auction,
              AppStrings.anyAuction
          ),

          _divider(),

          _moreTile(
              Icons.description_outlined,
              AppStrings.format,
              AppStrings.anyFormat
          ),

          _divider(),

          _moreTile(
              Icons.location_on_outlined,
              AppStrings.location,
              AppStrings.anyAuctionLocation
          )

        ],
      ),
    );
  }





  Widget _moreTile(
      IconData icon,
      String title,
      String sub
      ){

    return Padding(
      padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.5.h,bottom: 1.5.h),
      child:Row(
        children:[

          CircleAvatar(
            backgroundColor:AppColors.orangeColor.withOpacity(.13),
            child:Icon(
              icon,
              color:AppColors.orangeColor,
              size: 18,
            ),
          ),


          const SizedBox(width:15),


          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[

              Text(
                title,
                style:const TextStyle(
                    color:AppColors.greyColor,
                    fontSize: 13
                ),
              ),

              Text(
                sub,
                style:const TextStyle(
                    color:AppColors.whiteColor,
                    fontSize:13
                ),
              )

            ],
          ),


          const Spacer(),


          const Icon(
            Icons.keyboard_arrow_down,
            color:AppColors.greyColor,
            size: 18,
          )


        ],
      ),
    );
  }





  Widget _bottomButton(){

    return Container(
      color: Colors.transparent,
     padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 1.h,bottom: 2.h),
      child:SizedBox(
        height:55,
        width:double.infinity,

        child:ElevatedButton(
          onPressed:(){},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.orangeColor,
            foregroundColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6), // add radius here
              side: BorderSide(
                color: AppColors.orangeColor, // border color
                width: 1,
              ),
            ),
          ), child: Row(
          mainAxisAlignment: .spaceBetween,
            children: [
              const Icon(
                Icons.filter_alt,
                size: 18,
              ),
              const Text(
              AppStrings.showResults,
              style:TextStyle(
                  fontSize:14
              ),
                      ),
              const Icon(
                Icons.filter_alt,
                size: 18,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }




  Widget _title(String text){

    return Text(
      text,
      style:const TextStyle(
          color:AppColors.greyColor,
          fontSize:14,
          fontWeight:FontWeight.w500,

      ),
    );
  }




  Widget _divider(){

    return const Divider(
      color:AppColors.borderColor,
      height:1,
    );
  }



  BoxDecoration _box(){
    return BoxDecoration(
      color:AppColors.cardBgColor,
      borderRadius:BorderRadius.circular(6),
      border:Border.all(
          color:AppColors.borderColor
      ),
    );
  }
}
