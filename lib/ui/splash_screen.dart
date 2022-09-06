import 'package:final_ui/ui/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    Future.delayed(const Duration(seconds: 1)).then((val) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
              child: const Image(
                image: AssetImage("assets/splash.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 38),
              child: const Text(
                "Club P2P",
                style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.w400,
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 8),
              child: const Text(
                "A sister concern of WECON properties",
                style: TextStyle(
                  fontFamily: 'Quantico',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
