import 'package:bestvaluemotors/utils/appColors.dart';
import 'package:bestvaluemotors/views/homeScreen.dart';
import 'package:bestvaluemotors/views/myWatchListScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Best Auction',
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: AppColors.bgColor,
            canvasColor: AppColors.bgColor,
            fontFamily: 'Poppins',
          ),
          home: MyWatchListScreen() ,
          // home: HomeScreen() ,
        );
      },
    );
  }
}
