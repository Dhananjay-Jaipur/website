import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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