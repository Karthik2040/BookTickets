import 'package:booktickets/screens/bottom_bar.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppLayout());
    return GetMaterialApp(
        theme: ThemeData(primaryColor: primary),
        debugShowCheckedModeBanner: false,
        home: const BottomBar());
  }
}
