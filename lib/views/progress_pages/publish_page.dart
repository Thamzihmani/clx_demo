import 'package:clx_demo/views/completion_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PublishPage extends StatefulWidget {
  const PublishPage({Key? key}) : super(key: key);

  @override
  State<PublishPage> createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {
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
            child: const Image(image: AssetImage("assets/icons/ic_star.png")),
          ),
          SizedBox(height: 20.sp,),
          Text(
            "PUBLISH",
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30.sp,),
          Text(
            "7 of 7 Completed",
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
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.sp))),
          ),
          SizedBox(height: 40.sp,),
          Text(
            "PUBLISH",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 70.sp,),
          Text(
            "EASILY IN MINUTES",
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20.sp,),
          Text(
            "Create a website for your business.",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
            ),
          ),
          SizedBox(height: 15.sp,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CompletionPage(),));
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.sp))),
            child: Text(
             "PUBLISH",
              style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
            ),
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
