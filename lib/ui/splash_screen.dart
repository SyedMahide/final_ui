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
    await Future.delayed(Duration(microseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SignUpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage("assets/splash.png"),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 38),
              child: const Text("Club P2P",
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
              margin: EdgeInsets.only(top: 14),
                child: const Text("A sister concern of Wecone propertites",
                  style: TextStyle(
                    fontFamily: 'Quantico',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 40),
              child: Image(
                image: AssetImage("assets/loading.png"),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
