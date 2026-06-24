import 'package:bestvaluemotors/utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InAuctionView extends StatelessWidget {
  const InAuctionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _notificationCard(),
          SizedBox(height: 2.h),

          _auctionCard(),
          SizedBox(height: 2.h),

          _distanceCard(),
          SizedBox(height: 2.h),

          _vehicleDetailsCard(),
          SizedBox(height: 3.h),

          SizedBox(
            width: double.infinity,
            height: 6.h,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, size: 18),
              label: const Text(
                "Add New",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orangeColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }

  Widget _notificationCard() {
    return _card(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: AppColors.orangeColor.withOpacity(.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.directions_car_outlined,
              color: AppColors.orangeColor,
              size: 18,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "New Vehicle Listed",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 1.h,),
                const Text(
                  "You will receive notifications for new vehicles listed in auctions that match your preferences. Note that SMS and push notifications do not apply to the Live auction format and email notifications do not apply to the Appraisal auction format.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 1.h,),
                Row(
                  spacing: 2.w,
                  children: const [
                    _OutlinedOption(
                      text: "SMS",
                      icon: Icons.chat_bubble_outline,
                      selected: true,
                    ),
                    _OutlinedOption(
                      text: "Push",
                      icon: Icons.notifications_none,
                      selected: true,
                    ),
                    _OutlinedOption(
                      text: "Email",
                      icon: Icons.mail_outline,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget _auctionCard() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: AppColors.orangeColor.withOpacity(.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.gavel_outlined,
              color: AppColors.orangeColor,
              size: 18,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Auction Format",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 1.h,),
                const Text(
                  "You will be notified when your saved vehicle preferences match an auction type.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    height: 1.6,
                  ),
                ),
                SizedBox(height: 1.h,),
                Row(
                  spacing: 4,
                  children: const [
                    _FilledOption(text: "Appraisal"),
                    _OutlinedOption(text: "Grounded"),
                    _OutlinedOption(text: "Buy Now"),
                    _OutlinedOption(text: "Live"),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
        ],
      ),
    );
  }

  Widget _distanceCard() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10.w,
                height: 10.w,
                decoration: BoxDecoration(
                  color: AppColors.orangeColor.withOpacity(.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  color: AppColors.orangeColor,
                  size: 18,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Distance Away (km)",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Row(
                      spacing: 2.w,
                      children: const [
                        _DistanceChip("10"),
                        _DistanceChip("50"),
                        _DistanceChip("100"),
                        _DistanceChip("250"),
                        _DistanceChip("500"),
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    Container(
                      width: 15.w,
                      height: 6.h,
                      padding:  EdgeInsets.symmetric(horizontal: 2.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.orangeColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Text(
                        "Any",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  Widget _vehicleDetailsCard() {
    return _card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10.w,
            height: 10.w,
            decoration: BoxDecoration(
              color: AppColors.orangeColor.withOpacity(.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.description_outlined,
              color: AppColors.orangeColor,
              size: 18,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "Vehicle Listing Details",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 1.h,),
                Container(
                  padding: EdgeInsets.only(left: 2.w,right: 2.w,top: 1.h,bottom: 1.h),
                  decoration: BoxDecoration(
                    color: AppColors.cardBgColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: AppColors.borderColor),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 1.w,
                        height: 13.h,
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Expanded(
                        child: Text(
                          "You will receive notifications when year, make and model information match your saved vehicle listings criteria.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                            height: 1.7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
        ],
      ),
    );
  }

  Widget _card({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 3.w,right: 3.w,top: 2.h,bottom: 2.h),
      decoration: BoxDecoration(
        color: AppColors.cardBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: child,
    );
  }
}

class _OutlinedOption extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool selected;

  const _OutlinedOption({
    required this.text,
    this.icon,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: selected
              ? AppColors.orangeColor
              : AppColors.borderColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 18,
              color: selected
                  ? AppColors.orangeColor
                  : Colors.white70,
            ),
             SizedBox(width: 1.w),
          ],
          Text(
            text,
            style: TextStyle(
              color: selected
                  ? AppColors.orangeColor
                  : Colors.white70,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _FilledOption extends StatelessWidget {
  final String text;

  const _FilledOption({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      padding:  EdgeInsets.symmetric(horizontal: 2.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.orangeColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _DistanceChip extends StatelessWidget {
  final String text;

  const _DistanceChip(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 13.w,
      height: 5.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}