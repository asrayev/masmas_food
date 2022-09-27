import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home4.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home3 extends StatelessWidget {
  const home3({Key? key}) : super(key: key);

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
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 87.h,),
                Container(
                  height: 383.h,
                  width: 375.w,
                  child: Image.asset(Myimages.burger),
                ),
                SizedBox(height: 59.h,),
                Container(
                  child: Text("Food Ninja is Where Your\nComfort Food Lives", style: Myfonts.bentonBold400.copyWith(fontSize: 22),),
                ),
                SizedBox(height: 20.h,),
                Container(
                  child: Text("Enjoy a fast and smooth food delivery at\nyour doorstep", style: Myfonts.bentonBook400.copyWith(fontSize: 12),),

                ),
                SizedBox(height: 42.h,),
                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  splashColor: Colors.black,

                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => home4()));
                  }
                  ),
                  child: Container(
                    width: 157,
                    height: 57,
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
      ),
    );
  }
}
