import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleLocationPage extends StatefulWidget {
  const GoogleLocationPage({Key? key}) : super(key: key);

  @override
  State<GoogleLocationPage> createState() => _GoogleLocationPageState();
}

class _GoogleLocationPageState extends State<GoogleLocationPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Column(
        children: [
          SizedBox(height: 40.sp,),
          SizedBox(
            width: double.infinity,
            height: 80.sp,
            child: const Image(image: AssetImage("assets/icons/ic_map.png")),
          ),
          SizedBox(height: 20.sp,),
          Text(
            "Google Location",
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.sp,),
          Text(
            "2 of 6 Completed",
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.blue,
            ),
          ),
          SizedBox(height:5.sp,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor),
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.sp)),
            height: 10.sp,
            margin: EdgeInsets.symmetric(horizontal: 40.sp),
            child: Row(
              children: [
                Container(
                    width: ((width - 40) / 3).sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp))),
              ],
            ),
          ),
          SizedBox(height: 40.sp,),
          Text(
            "PIN YOUR BUSINESS LOCATION",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.sp,),
          Text(
            "Add Map Location\n For your Business",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 20.sp,),
          Container(
            width: (width/1.5).sp,
            height: 200.sp,color: Colors.grey,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:EdgeInsets.only(bottom: 4.sp) ,
                width: 50.sp,
                child: const Image(image: AssetImage("assets/icons/ic_swipe_left.png")),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 5.sp),
                child: Text("SWIPE",style: TextStyle(fontSize: 14.sp,color: Colors.blue),),
              ),
              Container(
                margin:EdgeInsets.only(bottom: 4.sp) ,
                width: 50.sp,
                child: const Image(image: AssetImage("assets/icons/ic_swipe_right.png")),
              ),
            ],)
        ]);
  }
}
