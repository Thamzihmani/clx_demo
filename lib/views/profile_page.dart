import 'package:clx_demo/views/progress_pages/business_desp_page.dart';
import 'package:clx_demo/views/progress_pages/business_image.dart';
import 'package:clx_demo/views/progress_pages/business_page.dart';
import 'package:clx_demo/views/progress_pages/contact_info_page.dart';
import 'package:clx_demo/views/progress_pages/google_location_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    List<Widget> pageWidget = [
      const BusinessPage(),
      const ContactInfoPage(),
      const GoogleLocationPage(),
      const BusinessDescriptionPage(),
      const BusinessImagePage(index: 4),
      const BusinessImagePage(index: 5),
      const BusinessImagePage(index: 6)
    ];
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
            PageView(
              children: pageWidget,
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

