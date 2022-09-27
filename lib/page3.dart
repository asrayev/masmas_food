import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';

class Shipping3 extends StatelessWidget {
  const Shipping3({Key? key}) : super(key: key);

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

          padding: EdgeInsets.all(20),
          // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(Myimages.backgr))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 38,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(
                    Myicons.icon_back,
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Container(
                  child: Text(
                    "Upload Your Photo\nProfile",
                    style: Myfonts.bentonBold400,
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Container(
                  child: Text(
                    "This data will be displayed in your account\nprofile for security",
                    style: Myfonts.bentonBook400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 147,
                  width: 342,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 11, top: 20),
                          child: Container(
                            child: SvgPicture.asset(Myicons.icon_location),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12, top: 23),
                          child: Container(
                            child: Text(
                              "Your Location",
                              style:
                                  Myfonts.bentonBold400.copyWith(fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Set Location",
                          style: Myfonts.bentonBold400.copyWith(fontSize: 15),
                        ),
                      ),
                      height: 57,
                      width: 322,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: MyColors.C_F6F6F6,
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(height: 328),
              Center(
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
    );
  }
}
