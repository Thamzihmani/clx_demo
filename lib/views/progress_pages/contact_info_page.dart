import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
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
            child: const Image(image: AssetImage("assets/icons/ic_mail.png")),
          ),
          SizedBox(height: 20.sp,),
          Text(
            "Location & Contact Info",
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.sp,),
          Text(
            "1 of 6 Completed",
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
                    width: ((width - 40) / 4).sp,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.sp))),
              ],
            ),
          ),
          SizedBox(height: 30.sp,),
          Text(
            "ADD BUSINESS LOCATION",
            style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
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
            child: Row(
              children: [
                const Spacer(),
                Center(
                  child: Text(
                    "Select Country",
                    style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
                  ),
                ),
                const Spacer(),
                Icon(Icons.keyboard_arrow_down_outlined,size: 16.sp,color: Colors.blueGrey[200],),
                SizedBox(width: 10.sp,)
              ],
            ),
          ),
          SizedBox(height: 10.sp,),
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
                    "State",
                    style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
                  ),
                ),
                const Spacer(),
                Icon(Icons.keyboard_arrow_down_outlined,size: 16.sp,color: Colors.blueGrey[200],),
                SizedBox(width: 10.sp,)
              ],
            ),
          ),
          SizedBox(height: 10.sp,),
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
                "City",
                style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
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
                "Pincode",
                style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
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
                "Address Line",
                style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
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
                "Mobile Number",
                style: TextStyle(fontSize: 16.sp,color: Colors.blueGrey[200]),
              ),
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
