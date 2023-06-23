import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessImagePage extends StatefulWidget {
  final int index;
  const BusinessImagePage({Key? key, required this.index}) : super(key: key);

  @override
  State<BusinessImagePage> createState() => _BusinessImagePageState();
}

class _BusinessImagePageState extends State<BusinessImagePage> {
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
        child: Image(
            image: AssetImage(widget.index == 4
                ? "assets/icons/ic_i.png"
                : "assets/icons/ic_image.png")),
      ),
      SizedBox(
        height: 20.sp,
      ),
      Text(
        "ADD BUSINESS IMAGES",
        style: TextStyle(
            fontSize: 24.sp, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 15.sp,
      ),
      Text(
        "${widget.index} of 7 Completed",
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
                width: widget.index == 4
                    ? ((width - 40) / 2).sp
                    : widget.index == 5
                        ? ((width - 40) / 1.7).sp
                        : ((width - 40) / 1.4).sp,
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
        "ADD PHOTOS OF YOUR BUSINESS",
        style: TextStyle(
            fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 15.sp,
      ),
      Text(
        "Business photos create your customer`s first\n impression of your company. The best\n photos send a message to customers about\n the company`s value, create brand loyalty,\n and sign a more professional appearance.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.black54,
        ),
      ),
      SizedBox(
        height: 20.sp,
      ),
      if (widget.index == 4) ...[
        Text(
          "Upload logo for your business the\n website is effective and creative.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
        )
      ],
      if (widget.index != 4) ...[
        Text(
          widget.index == 5
              ? "Upload header image for your business"
              : "Upload business photos for your business website",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
        ),
        SizedBox(
          height: 15.sp,
        ),
        Text(
          widget.index == 5
              ? "(Size: 540 x 540 Pixels)"
              : "Atleast three images (Size: 300 x 300 Pixels) ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10.sp,
            color: Colors.grey,
          ),
        ),
      ],
      SizedBox(
        height: 10.sp,
      ),
      SizedBox(
        height: 10.sp,
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp))),
        child: Text(
          widget.index == 4 ? "Upload Logo" : "Upload Image",
          style: TextStyle(fontSize: 12.sp),
        ),
      ),
      SizedBox(
        height: 25.sp,
      ),
      Container(
        width: 100.sp,
        height: 100.sp,
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 90.sp,
                height: 90.sp,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.sp)),
                child: Center(
                    child: Text(
                  "IMAGE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Colors.grey),
                )),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.cancel,
                  size: 20.sp,
                  color: Colors.black.withOpacity(0.5),
                ))
          ],
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
