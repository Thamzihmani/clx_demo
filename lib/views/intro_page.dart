import 'package:clx_demo/views/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Theme.of(context).primaryColor, Colors.white],
            stops: const [0, 0.6],
            begin: const AlignmentDirectional(0.14, -1),
            end: const AlignmentDirectional(-0.14, 1),
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 25.sp),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/img_7.png',
                    width: 176,
                    height: 78,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.04, -1.02),
              child: Container(
                width: 160.sp,
                height: 160.sp,
                decoration:  const BoxDecoration(
                  color: Color(0xff6FBBF6),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.37, -0.53),
              child: Container(
                width: 330.sp,
                height: 330.sp,
                decoration:  BoxDecoration(
                  color: const Color(0xff6FBBF6),
                  gradient: LinearGradient(
                    colors: const [Color(0xff6FBBF6), Colors.white],
                    stops: [0.0.sp, 1.0.sp],
                    begin: AlignmentDirectional(0.1, -1),
                    end: AlignmentDirectional(-0.1, 1),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: 60.sp,
              top: 140.sp,
              child: Text(
                'CREATE',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 70.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 70.sp,
              top: 220.sp,
              child: Text(
                'YOUR BUSINESS',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 90.sp,
              top: 260.sp,
              child: Text(
                'WEBSITES IN',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 100.sp,
              top: 300.sp,
              child: Text(
                '3 MINUTES',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.63),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/img_6.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 80.sp,vertical: 10.sp),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.sp))),
                  child: const Text("Get Started Now"),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
