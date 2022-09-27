import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterl3/utils/Myimages.dart';
import 'package:flutterl3/utils/colors.dart';
import 'package:flutterl3/utils/fonts.dart';
import 'utils/Myicons.dart';

String icon = Myimages.ring;
String text = "Ringing...";
int count = 0;

class Shipping5 extends StatefulWidget {
  const Shipping5({Key? key}) : super(key: key);

  @override
  State<Shipping5> createState() => _Shipping5State();
}

class _Shipping5State extends State<Shipping5> {
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
                height: 180,
              ),
              Center(
                child: Image.asset(
                  Myimages.man,
                  width: 172,
                  height: 162,
                ),
              ),
              SizedBox(height: 39),
              Container(
                child: Center(
                    child: Text(
                  "Richard Lewis",
                  style: Myfonts.bentonBold400.copyWith(
                    fontSize: 25,
                  ),
                )),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Center(
                  child: Text(
                    text,
                    style:
                        Myfonts.bentonRegular400.copyWith(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 177,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count += 1;
                        if (count % 2 == 0) {
                          icon = Myimages.mute;
                          text = "15.23 Min";
                        } else {
                          icon = Myimages.ring;
                          text = "Ringing...";
                        }
                      });
                    },
                    child: Container(
                      child: Image.asset(
                        icon,
                        height: 78,
                        width: 78,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset(
                      Myimages.ringfail,
                      height: 78,
                      width: 78,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
