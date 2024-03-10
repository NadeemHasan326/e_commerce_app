import 'package:client/constants/color_constant.dart';
import 'package:client/screens/main_landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 14.5,letterSpacing: 0.45,color: AppColor.heading6),
          bodyLarge:  TextStyle(fontSize: 14,color: AppColor.textColor1),
          bodySmall:  TextStyle(fontSize: 12,color: AppColor.captionColor)
        )
      ),
      home: const MainLandingScreen(),
    );
  }
}
