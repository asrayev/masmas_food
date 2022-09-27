import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home6.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home5 extends StatelessWidget {
  const home5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF253B80).withOpacity(0.01),
                  blurRadius: 40,
                )
              ],
              image: DecorationImage(
                image: AssetImage(Myimages.backgr),
                fit: BoxFit.cover,
              )),
          child: Center(
            child: Column(

              children: [
                SizedBox(height: 47.h,),
                Container(
                  height: 139.h,
                  width: 175.w,
                  child: Image.asset(Myimages.masmasfirst),
                ),
                Container(
                  child: Text("MasmasFood", style: Myfonts.Viga.copyWith(color: MyColors.Cgreen, fontSize: 40),),
                ),
                Container(
                  child: Text("Deliever Favorite Food", style: Myfonts.Inter400.copyWith(fontSize: 13),),
                ),
                SizedBox(height: 60.h,),
                Container(
                  child: Text("Sign Up For Free", style: Myfonts.bentonBold400.copyWith(fontSize: 20),),
                ),
                SizedBox(height: 40.h,),

               Container(
                 height: 57.h,
                 width: 325.w,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(15)),
                   
                 ),
               child: Row(
                 children: [
                  SizedBox(width: 20.w,),
                   Container(

                     child: SvgPicture.asset(Myicons.person),
                   ),
                    SizedBox(width: 16.w,),
                   Text("Anamwp . . |", style: Myfonts.bentonRegular400.copyWith(fontSize: 14, color: MyColors.C_person,))
                 ],
               ),  
               ),
                SizedBox(height: 12.h,),
                Container(
                  height: 57.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),

                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                     Container(
                      child: SvgPicture.asset(Myicons.email),
                     ),
                      SizedBox(width: 16.w,),
                      Text("Email", style: Myfonts.bentonRegular400.copyWith(fontSize: 14, color: MyColors.C_person,))
                    ],
                  ),
                ),
               SizedBox(height: 12.h,),
                Container(
                  height: 57.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),

                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.w,),
                      Container(

                        child: SvgPicture.asset(Myicons.lock),
                      ),
                      SizedBox(width: 16.w,),
                      Text("Password", style: Myfonts.bentonRegular400.copyWith(fontSize: 14, color: MyColors.C_person,)),
                    SizedBox(width: 157.w,),
                      Container(
                        child: SvgPicture.asset(Myicons.eye),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0,),
             Row(
               children: [Container(
                 child: SvgPicture.asset(Myicons.nike),
               ),
             ]),

                InkWell(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  splashColor: Colors.cyan,

                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => home6()));
                  }
                  ),
                  child: Container(
                    width: 157,
                    height: 57,
                    child: Center(
                        child: Text(
                          "Create Account",
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
