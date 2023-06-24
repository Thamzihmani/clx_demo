import 'package:clx_demo/views/profile_page.dart';
import 'package:clx_demo/views/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/strings.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordVisible = false;
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameNode = FocusNode();
  final passwordNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    nameNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(children: [
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                left: 20.sp, right: 20.sp, top: 40.sp, bottom: 10.sp),
            color: Colors.blue,
            child: const Image(image: AssetImage("assets/images/img_4.png")),
          )),
          Container(
            color: Colors.blue,
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.sp),
                      topRight: Radius.circular(50.sp))),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.sp),
                        topRight: Radius.circular(50.sp))),
                height: (height / 1.8).sp,
                width: double.infinity,
                child: Padding(
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
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      SizedBox(
                        height: 40.sp,
                        child: TextFormField(
                          controller: nameController,
                          focusNode: nameNode,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(errorStyle: const TextStyle(height: 0),
                              hintText: "User Name",
                              hintStyle:
                                  TextStyle(fontSize: 12.sp, color: Colors.grey),
                              contentPadding: EdgeInsets.only(left: 30.sp),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30.sp)),
                              errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.sp,color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(30.sp)),
                              filled: true,
                              fillColor: Colors.blueGrey[50]),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      SizedBox(
                        height: 40.sp,
                        child: TextFormField(
                          controller: passwordController,
                          focusNode: passwordNode,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(errorStyle: const TextStyle(height: 0),
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
                              errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.sp,color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(30.sp)),
                              filled: true,
                              fillColor: Colors.blueGrey[50]),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return '';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.6.sp,
                            child: Checkbox(
                                value: false,
                                onChanged: (value) {},
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                side:
                                    BorderSide(color: Colors.blue, width: 2.sp)),
                          ),
                          //Container()
                          Text(
                            "Remember",
                            style: TextStyle(fontSize: 10.sp, color: Colors.blue),
                          ),
                          const Spacer(),
                          Text(
                            "Forgot Password ?",
                            style: TextStyle(fontSize: 10.sp, color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.sp))),
                            onPressed: () async {
                              FocusScope.of(context).unfocus();
                              SharedPreferences preference = await SharedPreferences.getInstance();
                              if(_formKey.currentState!.validate()){
                                final  name = preference.getString(Strings.userName);
                                final password =  preference.getString(Strings.password);
                                preference.setBool(Strings.freshUser, false);
                                if(name != nameController.text || passwordController.text != password ){
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Credential")));
                                }
                                else {
                                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>  const ProfilePage()));
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully signed-in")));
                                }
                              }

                            },
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: 2.sp,
                      ),
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
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Login with",
                            style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                          ),
                          Transform.scale(
                              scale: 0.5,
                              child: const Image(
                                  image:
                                      AssetImage("assets/icons/ic_google.png"))),
                          Transform.scale(
                              scale: 0.5,
                              child: const Image(
                                  image: AssetImage("assets/icons/ic_fb.png"))),
                          Transform.scale(
                              scale: 0.5,
                              child: const Image(
                                  image: AssetImage(
                                      "assets/icons/ic_linkedin.png"))),
                          Transform.scale(
                              scale: 0.5,
                              child: const Image(
                                  image: AssetImage("assets/icons/ic_twit.png")))
                        ],
                      ),
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
                      SizedBox(
                        height: 4.sp,
                      ),
                      Container(
                        child: Stack(children: [
                          SizedBox(
                            height: 40.sp,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Mobile Number",
                                  hintStyle: TextStyle(
                                      fontSize: 12.sp, color: Colors.grey),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 30.sp),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(30.sp)),
                                  filled: true,
                                  fillColor: Colors.blueGrey[50]),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 100.sp,
                              height: 40.sp,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30.sp)),
                              child: Center(
                                  child: Text(
                                "Request OTP",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.blue),
                              )),
                            ),
                          )
                        ]),
                      ),
                      SizedBox(height: 10.sp,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don`t have an account?",
                            style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                          SizedBox(width: 10.sp,),
                          SizedBox(
                            height: 20.sp,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage(),));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.sp))),
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(fontSize: 10.sp),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
