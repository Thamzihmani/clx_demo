import 'package:clx_demo/constants/strings.dart';
import 'package:clx_demo/views/intro_page.dart';
import 'package:clx_demo/views/progress_pages/dashboard.dart';
import 'package:clx_demo/views/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      bool freshUser = value.getBool(Strings.freshUser) ?? true;
      Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>freshUser ?  const IntroductionPage() : const DashboardPage(),
            )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
