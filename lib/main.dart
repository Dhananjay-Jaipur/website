import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    WidgetsFlutterBinding.ensureInitialized();

    return MaterialApp(
      title: "Dr. Flutter",

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: "doto",
        brightness: Brightness.dark
      ),

      home: Home(),

    );
  }
}