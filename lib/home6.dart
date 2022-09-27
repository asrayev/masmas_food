import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home2.dart';
import 'package:flutterl3/home5.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class home6 extends StatelessWidget {
  const home6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF253B80).withOpacity(0.1),
                  blurRadius: 40,
                )
              ],
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
                  child: InkWell(
                    onTap: ((){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => home5()));

                    }
                    ),
                    onLongPress: ((){                      Navigator.push(context, MaterialPageRoute(builder:(context) => home5()));
                    Navigator.push(context, MaterialPageRoute(builder:(context) => home2()));
                    }),
                    child: SvgPicture.asset(
                      Myicons.icon_back,
                      width: 45.w,
                      height: 45.h,
                    ),
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
                    "Fill in your bio to get\nstarted",
                    style: Myfonts.bentonBold400.copyWith(fontSize: 25),
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
                    style: Myfonts.bentonBook400.copyWith(fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              builtButton("First Name"),
              SizedBox(
                height: 20.h,
              ),
              builtButton("Last Name"),
              SizedBox(
                height: 20.h,
              ),
              builtButton("Mobile Number"),
              SizedBox(
                height: 220.h,
              ),
              Center(
                child: InkWell(
                  onTap: (() {

                  }),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget builtButton(String text) {
  return Container(
      child: Center(
        child: Container(
        height: 61.h,
          width: 347.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
            color: Colors.white
          ),
          child: Row(
            children: [
              SizedBox(width: 20.w,),
              Container(
                child: Text(text, style: Myfonts.bentonRegular400.copyWith(fontSize: 14, color: MyColors.C_person),),
              )
            ],
          ),
        ),
      ));
}
