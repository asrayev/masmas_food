import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home5.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home4 extends StatelessWidget {
  const home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration:  BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF253B80).withOpacity(0.2),
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
                  child: Text("Login To Your Account", style: Myfonts.bentonBold400.copyWith(fontSize: 20),),
                ),
                SizedBox(height: 40.h,),
                Container(
                  height: 57,
                  width: 325,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),

                  child: Row( children: [
                    SizedBox(width: 28.w,),
                    Text("Email", style: Myfonts.bentonRegular400.copyWith(fontSize: 14, ),),

                  ]
                  )),
                SizedBox(height: 12.h,),
                Container(
                  height: 57,
                  width: 325,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                    child: Row( children: [
                      SizedBox(width: 28.w,),
                      Text("Password", style: Myfonts.bentonRegular400.copyWith(fontSize: 14, ),),

                    ]
                    )
                ),
                SizedBox(height: 20.h,),
                Container(
                  child: Text("Or Continue With", style: Myfonts.bentonBold400.copyWith(fontSize: 12),),
                ),
                SizedBox(height: 20.h,),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      SizedBox(width: 25,),
                      Container(
                        height: 57,
                        width: 152,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        , color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 22.w,),
                            Container(
                              child: SvgPicture.asset(Myicons.facebook),
                            ),
                            SizedBox(width: 13.w,),
                            Container(
                              child: Text("Facebook", style: Myfonts.bentonRegular400.copyWith(fontSize: 14),),
                            ),
                          ],

                        ),
                        

                      ),
                      SizedBox(width: 20.w,),
                      Container(
                        height: 57,
                        width: 152,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                            , color: Colors.white
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 22.w,),
                            Container(
                              child: SvgPicture.asset(Myicons.googe),
                            ),
                            SizedBox(width: 13.w,),
                            Container(
                              child: Text("Google", style: Myfonts.bentonRegular400.copyWith(fontSize: 14),),
                            ),
                          ],

                        ),


                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Container(
                  child: Text("Forgot Your Password?", style: Myfonts.bentonRegular400.copyWith(color: MyColors.Cgreen, fontSize: 12),),
                ),
                SizedBox(height: 16.h,),
                InkWell(

                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  splashColor: Colors.cyan,

                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => home5()));
                  }
                  ),
                  child: Container(
                    width: 157,
                    height: 57,
                    child: Center(
                        child: Text(
                          "Login",
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
