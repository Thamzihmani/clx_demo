import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompletionPage extends StatefulWidget {
  const CompletionPage({Key? key}) : super(key: key);

  @override
  State<CompletionPage> createState() => _CompletionPageState();
}

class _CompletionPageState extends State<CompletionPage> {
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
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200.sp,
                    child: const Image(image: AssetImage("assets/images/img_1.png")),
                  ),
                  Text(
                    "CONGRATS!",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.sp,),
                  Text(
                    "YOU COMPLETED THE PROCESS",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.sp,),
                  Text(
                    "Your Business Website URL : http://www.1clx.com/businessname",
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 10.sp,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CompletionPage(),));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.sp))),
                    child: Text(
                      "DASHBOARD",
                      style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CompletionPage(),));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.sp))),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12.sp),
                      child: Text(
                        "WEBSITE",
                        style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      child: Image(image: AssetImage("assets/icons/ic_person.png")),
                    ), const Spacer(),

                    SizedBox(
                      width: 50.sp,
                      child: const Image(image: AssetImage("assets/icons/ic_pot.png")),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
