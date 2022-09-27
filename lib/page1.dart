import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Shipping extends StatelessWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(Myimages.backgr),
            fit: BoxFit.cover,
          )),

          padding: EdgeInsets.all(20).r,
          // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(Myimages.backgr))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5).r,
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    Myicons.icon_back,
                    width: 45.w,
                    height: 45.h,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5).r,
                child: Container(
                  child: Text(
                    "Upload Your Photo\nProfile",
                    style: Myfonts.bentonBold400,
                  ),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5).r,
                child: Container(
                  child: Text(
                    "This data will be displayed in your account\nprofile for security",
                    style: Myfonts.bentonBook400,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              builtButton(Myimages.fromgalary),
              SizedBox(
                height: 20.h,
              ),
              builtButton(Myimages.takephoto),
              SizedBox(
                height: 165.h,
              ),
              Center(
                child: Container(
                  width: 157.w,
                  height: 57.h,
                  child: Center(
                      child: Text(
                    "Next",
                    style: Myfonts.bentonBold400
                        .copyWith(color: Colors.white, fontSize: 16),
                  )),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColors.C_53E88B,
                        MyColors.C_15BE77,
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget builtButton(String imageName) {
  return Container(
      child: Center(
    child: Container(
      height: 129.h,
      width: 325.w,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0.4),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(22))),
      child: Center(
        child: Container(
          height: 84.h,
          width: 88.w,
          child: Image.asset(imageName),
        ),
      ),
    ),
  ));
}
