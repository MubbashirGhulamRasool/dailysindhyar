import 'package:flutter/material.dart';
import 'package:dailysindhyar/views/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ REQUIRED FOR WEBVIEW
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
