import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterl3/page1.dart';
import 'package:flutterl3/page2.dart';
import 'package:flutterl3/page3.dart';
import 'package:flutterl3/page4.dart';
import 'package:flutterl3/page5.dart';
import 'package:flutterl3/home1.dart';
import 'package:flutterl3/home2.dart';
import 'home1.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';
import 'home6.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext contex, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Badasfa",
          themeMode: ThemeMode.light,
          darkTheme: ThemeData(
            primarySwatch: Colors.yellow,
          ),
          theme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.transparent),
            primarySwatch: Colors.blue,
          ),
          home: home1(),
        );
      },
    );
  }
}
