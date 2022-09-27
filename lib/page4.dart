import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';

class Shipping4 extends StatelessWidget {
  const Shipping4({Key? key}) : super(key: key);

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
              color: Colors.white60,
              image: DecorationImage(
            image: AssetImage(Myimages.backgr),
            fit: BoxFit.cover,

          )),

          padding: EdgeInsets.all(20),
          // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(Myimages.backgr))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 207,
              ),
              Center(
                child: Image.asset(
                  Myimages.done,
                  width: 172,
                  height: 162,
                ),
              ),
              SizedBox(height: 35),
              Container(
                child: Center(
                    child: Text(
                  "Congrats!",
                  style: Myfonts.bentonBold400
                      .copyWith(fontSize: 30, color: MyColors.Cgreen),
                )),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Your Profile Is Ready To Use",
                    style: Myfonts.bentonBold400.copyWith(fontSize: 23),
                  ),
                ),
              ),
              SizedBox(
                height: 192,
              ),
              Center(
                child: Container(
                  width: 157,
                  height: 57,
                  child: Center(
                      child: Text(
                    "Try Order",
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
