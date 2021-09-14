import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_blog/app/common/app_colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
          primaryColor: AppColors.kPrimaryColor,
          scaffoldBackgroundColor: AppColors.kBgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style:
                TextButton.styleFrom(backgroundColor: AppColors.kPrimaryColor),
          ),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: AppColors.kBodyTextColor),
            bodyText2: TextStyle(color: AppColors.kBodyTextColor),
            headline5: TextStyle(color: AppColors.kDarkBlackColor),
          )),
    ),
  );
}
