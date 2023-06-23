import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDescriptionPage extends StatefulWidget {
  const BusinessDescriptionPage({Key? key}) : super(key: key);

  @override
  State<BusinessDescriptionPage> createState() =>
      _BusinessDescriptionPageState();
}

class _BusinessDescriptionPageState extends State<BusinessDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Column(children: [
      SizedBox(
        height: 40.sp,
      ),
      SizedBox(
        width: double.infinity,
        height: 80.sp,
        child: const Image(image: AssetImage("assets/icons/ic_i.png")),
      ),
      SizedBox(
        height: 20.sp,
      ),
      Text(
        "ADD BUSINESS DESCRIPTION",
        style: TextStyle(
            fontSize: 24.sp, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 15.sp,
      ),
      Text(
        "3 of 6 Completed",
        style: TextStyle(
          fontSize: 12.sp,
          color: Colors.blue,
        ),
      ),
      SizedBox(
        height: 5.sp,
      ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor),
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10.sp)),
        height: 10.sp,
        margin: EdgeInsets.symmetric(horizontal: 40.sp),
        child: Row(
          children: [
            Container(
                width: ((width - 40) / 2.5).sp,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp))),
          ],
        ),
      ),
      SizedBox(
        height: 30.sp,
      ),
      Text(
        "PIN YOUR BUSINESS LOCATION",
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 15.sp,
      ),
      Text(
        "Provide an overview of the\n business. This description provides\n extensive details outlining the business.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black54,
        ),
      ),
      SizedBox(
        height: 10.sp,
      ),
      Container(
        width: double.infinity,
        height: (height/5).sp,
        margin: EdgeInsets.symmetric(horizontal: 60.sp),
        padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: 1.sp, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10.sp)),
        child: Text(
          "Enter your business overview for about page description.",
          style: TextStyle(fontSize: 12.sp,color: Colors.blueGrey[200],height: 1.5),
        ),
      ),SizedBox(
        height: 10.sp,
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 60.sp),
        padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: 1.sp, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10.sp)),
        child: Text(
          "Email Id",
          style: TextStyle(fontSize: 12.sp,color: Colors.blueGrey[200],height: 1.5),
        ),
      ),SizedBox(
        height: 10.sp,
      ),
      Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 60.sp),
        padding: EdgeInsets.symmetric(vertical: 10.sp,horizontal: 10.sp),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                width: 1.sp, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10.sp)),
        child: Text(
          "Existing Website URL(optional)",
          style: TextStyle(fontSize: 12.sp,color: Colors.blueGrey[200],height: 1.5),
        ),
      ),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 4.sp),
            width: 50.sp,
            child: const Image(
                image: AssetImage("assets/icons/ic_swipe_left.png")),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.sp),
            child: Text(
              "SWIPE",
              style: TextStyle(fontSize: 14.sp, color: Colors.blue),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4.sp),
            width: 50.sp,
            child: const Image(
                image: AssetImage("assets/icons/ic_swipe_right.png")),
          ),
        ],
      )
    ]);
  }
}
