import 'package:clx_demo/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'profile_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>with WidgetsBindingObserver {
  bool passwordVisible = false;
  bool isKeyboardOpen = false;
  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameNode = FocusNode();
  final mailNode = FocusNode();
  final passwordNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    nameController.dispose();
    mailController.dispose();
    passwordController.dispose();
    nameNode.dispose();
    mailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    setState(() {
      isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar:!isKeyboardOpen ?  AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: (height / 2.2).sp,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.sp)),
        title: SizedBox(
          width: double.infinity,
         height: (height/2.4).sp,
          child: const Image(image: AssetImage("assets/images/img_5.png")),
        ),
      ) : null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.sp),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: EdgeInsets.only(top: 20.sp),
                child: Text(
                  "Sign Up",
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
                  controller: nameController,
                  focusNode: nameNode,textInputAction: TextInputAction.next,
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
                    height: 7.sp,
                  ),
                  SizedBox(
                    height: 40.sp,
                    child: TextFormField(
                      controller: mailController,
                      focusNode: mailNode,
                        textInputAction: TextInputAction.next,
                      decoration: InputDecoration(errorStyle: const TextStyle(height: 0),
                          hintText: "Email ID",
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
                        }else if(!RegExp(r'\S+@\S+\.\S+')
                            .hasMatch(mailController.text)){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please enter a valid Email")));
                          return '';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 7.sp,
                  ),
                  SizedBox(
                    height: 40.sp,
                    child: TextFormField(
                      controller: passwordController,
                      focusNode: passwordNode,
                        textInputAction: TextInputAction.done,
                      obscureText: passwordVisible ? false : true,
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
                  SizedBox(height: 10.sp,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff87CEEB),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.sp))),
                        onPressed: () async {
                          SharedPreferences preference = await SharedPreferences.getInstance();
                          if(_formKey.currentState!.validate()){
                            preference.setString(Strings.userName, nameController.text);
                            preference.setString(Strings.email, mailController.text);
                            preference.setString(Strings.password, passwordController.text);
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully signed up")));
                          }
                        },
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
                  SizedBox(height: 15.sp,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
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
                              "Sign in",
                              style: TextStyle(fontSize: 10.sp,color: Colors.blueGrey),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 15.sp,),
            ]),
          ),
        ),
      ),
    );
  }
}
