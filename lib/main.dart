import 'package:clx_demo/views/sign_in_page.dart';
import 'package:clx_demo/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) => const MaterialApp(
        title: 'CLX Demo-App',
        home: SplashPage(),
      ),
    );
  }
}
