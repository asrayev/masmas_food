import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home1.dart';
import 'package:flutterl3/home3.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home2 extends StatelessWidget {
  const home2({Key? key}) : super(key: key);

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
                SizedBox(height: 57.h,),
                Container(
                  height: 408.h,
                  width: 375.w,
                  child: Image.asset(Myimages.ponchik),
                ),
                SizedBox(height: 39.h,),
                Container(
                  child: Text("Find your  Comfort\nFood here", style: Myfonts.bentonBold400.copyWith(fontSize: 22),),
                ),
                SizedBox(height: 20.h,),
                Container(
                  child: Text("Here You Can find a chef or dish for every\ntaste and color. Enjoy!", style: Myfonts.bentonBook400.copyWith(fontSize: 12),),

                ),
                SizedBox(height: 42.h,),
                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  splashColor: Colors.cyan,

                  onTap: ((){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => home3()));
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
