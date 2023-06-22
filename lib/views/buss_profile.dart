import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessProfilePage extends StatefulWidget {
  const BusinessProfilePage({Key? key}) : super(key: key);

  @override
  State<BusinessProfilePage> createState() => _BusinessProfilePageState();
}

class _BusinessProfilePageState extends State<BusinessProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Theme.of(context).primaryColor, Colors.white],
                begin: Alignment.topCenter,
                stops: [0.0.sp, 0.3.sp],
                end: Alignment.bottomCenter)),
        child: Column(
            children: [
              SizedBox(height: 80.sp,),
          SizedBox(
            width: double.infinity,
            height: 100.sp,
            child: const Image(image: AssetImage("assets/icons/ic_house.png")),
          ),
              SizedBox(height: 20.sp,),
          Text(
            "Business Profile",
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
              SizedBox(height: 15.sp,),
          Text(
            "0 of 6 Completed",
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.blue,
            ),
          ),
              SizedBox(height:5.sp,),
          /*  RoundedProgressBar(
            style: RoundedProgressBarStyle(
                borderWidth: 0.1.sp,backgroundProgress: Colors.blue,colorProgress: Colors.white),
            margin: EdgeInsets.symmetric(horizontal: 20.sp,vertical: 20.sp),
            borderRadius: BorderRadius.circular(25.sp),height: 10.sp,
            percent: 10,
          ),*/

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
                    width: ((width - 40) / 6).sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp))),
              ],
            ),
          ),
          SizedBox(height: 60.sp,),
          Text(
            "CREATE BUSINESS PROFILE",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
              SizedBox(height: 20.sp,),
          Text(
            "Start Building your\n Business Profile",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black54,
            ),
          ),
              SizedBox(height: 20.sp,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60.sp),
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1.sp, color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(10.sp)),
            child: Center(
              child: Text(
                "Business Name",
                style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
              ),
            ),
          ),
          SizedBox(height: 15.sp,),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60.sp),
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1.sp, color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(10.sp)),
            child: Row(
              children: [
                const Spacer(),
                Center(
                  child: Text(
                    "Choose",
                    style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
                  ),
                ),
                const Spacer(),
                Icon(Icons.keyboard_arrow_down_outlined,size: 16.sp,color: Colors.blueGrey[200],),
                SizedBox(width: 10.sp,)
              ],
            ),
          ),
          const Spacer(),
          Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                child: Image(image: AssetImage("assets/icons/ic_person.png")),
              ), const Spacer(),
              Padding(
                padding:  EdgeInsets.only(bottom: 10.sp),
                child: Text("SWIPE",style: TextStyle(fontSize: 14.sp,color: Colors.blue),),
              ),
              Container(
                margin:EdgeInsets.only(bottom: 4.sp) ,
                width: 50.sp,
                child: const Image(image: AssetImage("assets/icons/ic_swipe_right.png")),
              ), const Spacer(),
              SizedBox(
                width: 50.sp,
                child: const Image(image: AssetImage("assets/icons/ic_pot.png")),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
