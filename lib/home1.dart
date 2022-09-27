import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/home2.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.push(context,
            MaterialPageRoute(builder:(context) => home2(),
            )
            )
    );
  }

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
                SizedBox(height: 305.h,),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}




