import 'package:final_ui/ui/home_screen.dart';
import 'package:final_ui/ui/life_style.dart';
import 'package:final_ui/ui/main_screen.dart';
import 'package:final_ui/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SignUpScreen(),
        );
      },
    );
  }
//
}