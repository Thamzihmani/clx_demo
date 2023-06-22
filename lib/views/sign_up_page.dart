import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: (height / 2.2).sp,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.sp)),
        title: Container(
          width: double.infinity,
         height: (height/2.4).sp,
         /* padding: EdgeInsets.only(
              left: 20.sp, right: 20.sp, top: 40.sp, bottom: 40.sp),*/
          child: const Image(image: AssetImage("assets/images/img_5.png")),
        ),
      ),
      body: Container(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.sp),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: EdgeInsets.only(top: 20.sp),
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          SizedBox(
            height: 40.sp,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle:
                  TextStyle(fontSize: 12.sp, color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 30.sp),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.sp)),
                  filled: true,
                  fillColor: Colors.blueGrey[50]),
            ),
          ),
              SizedBox(
                height: 7.sp,
              ),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email ID",
                      hintStyle:
                      TextStyle(fontSize: 12.sp, color: Colors.grey),
                      contentPadding: EdgeInsets.only(left: 30.sp),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.sp)),
                      filled: true,
                      fillColor: Colors.blueGrey[50]),
                ),
              ),
              SizedBox(
                height: 7.sp,
              ),
              SizedBox(
                height: 40.sp,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.sp),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(
                              Icons.visibility_off_outlined,size: 18.sp,
                              color: passwordVisible
                                  ? const Color.fromARGB(255, 88, 10, 177)
                                  : Colors.black54,
                            )),
                      ),
                      hintStyle:
                      TextStyle(fontSize: 12.sp, color: Colors.grey),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.sp),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.sp)),
                      filled: true,
                      fillColor: Colors.blueGrey[50]),
                ),
              ),
              SizedBox(height: 10.sp,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff87CEEB),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp))),
                    onPressed: () {},
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold),
                    )),
              ),
              SizedBox(height: 10.sp,),
              Row(children: <Widget>[
                Expanded(
                  child: Divider(
                    endIndent: 10.sp,
                    indent: 20.sp,
                    thickness: 1.sp,
                    height: 10.h,
                    color: Colors.grey[300],
                  ),
                ),
                Text(
                  'or',
                  style:
                  TextStyle(fontSize: 12.sp, color: Colors.grey[400]),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 20.sp,
                    indent: 10.sp,
                    thickness: 1.sp,
                    height: 10.h,
                    color: Colors.grey[300],
                  ),
                ),
              ]),
              SizedBox(height: 5.sp,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Sign up with",
                    style: TextStyle(fontSize: 12.sp, color: Colors.white),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.sp,
                    child: Transform.scale(
                        scale: 0.5,
                        child: const Image(
                            image:
                            AssetImage("assets/icons/ic_google.png"))),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.sp,
                    child: Transform.scale(
                        scale: 0.5,
                        child: const Image(
                            image: AssetImage("assets/icons/ic_fb.png"))),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.sp,
                    child: Transform.scale(
                        scale: 0.5,
                        child: const Image(
                            image: AssetImage(
                                "assets/icons/ic_linkedin.png"))),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15.sp,
                    child: Transform.scale(
                        scale: 0.5,
                        child: const Image(
                            image: AssetImage("assets/icons/ic_twit.png"))),
                  ),

                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don`t have an account?",
                    style: TextStyle(fontSize: 10.sp, color: Colors.white),
                  ),
                  SizedBox(width: 10.sp,),
                  SizedBox(
                    height: 20.sp,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage(),));
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(20.sp))),
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 10.sp,color: Colors.blueGrey),
                        )),
                  )
                ],
              ),
              SizedBox(height: 15.sp,),
        ]),
      ),),
    );
  }
}
