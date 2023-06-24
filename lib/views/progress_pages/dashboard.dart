import 'package:clx_demo/views/profile_page.dart';
import 'package:clx_demo/views/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/strings.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String name = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      setState(() {
        name = value.getString(Strings.userName) ?? "";
        email = value.getString(Strings.email) ?? "";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
        centerTitle: true,
      ),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                text: "Welcome!\t",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: "$name\n\n",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              TextSpan(
                text: email,
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              )
            ])),
            SizedBox(
              height: 100.sp,
            ),
            Text(
              "YOU COMPLETED THE PROCESS",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text(
              "Here is your Business Dashboard",
              style: TextStyle(fontSize: 10.sp, color: Colors.grey),
            ),
          ],
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
            width: MediaQuery.of(context).size.width / 2,
            child: Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                  color: Colors.blue,
                  height: 100.sp,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage(),));
                  },
                  leading: Icon(
                    Icons.person_outline,
                    size: 18.sp,
                  ),
                  title: Text(
                    "Update Profile",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    logout();
                  },
                  leading: Icon(
                    Icons.logout,
                    size: 18.sp,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 14.sp),
                  ),
                )
              ]),
            )),
      ),
    );
  }

  logout() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
              content: Text(
                "Do you want to Logout ?",
                style: TextStyle(fontSize: 12.sp),
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                    )),
                TextButton(
                    onPressed: () async {
                      SharedPreferences preference =
                          await SharedPreferences.getInstance();
                      preference.remove(Strings.freshUser);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage()
                          ),(route) => false,);
                    },
                    child: Text(
                      "Yes",
                      style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                    ))
              ],
            ));
  }
}
