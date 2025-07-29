import 'package:flutter/material.dart';
import 'dart:async';
import 'home_screen.dart'; // تأكد من تضمين الصفحة الرئيسية

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // عرض الشاشة لمدة 3 ثوانٍ ثم الانتقال إلى الصفحة الرئيسية
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                HomeScreen()), // التأكد من اسم الصفحة الرئيسية
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange, // يمكنك تغيير اللون حسب التصميم
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الصورة التي تريد عرضها في Splash
            Image.asset('lib/assest/1.png',
                width: 200, height: 200), // تأكد من مسار الصورة
          ],
        ),
      ),
    );
  }
}
