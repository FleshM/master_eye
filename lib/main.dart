import 'package:camera/camera.dart';
import 'package:master_eye/screens/cam_screen.dart';
import 'package:master_eye/screens/first_screen.dart';
import 'package:master_eye/screens/main_screen_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/': (context) => FirstScreen(),
        '/main': (context) => MainScreenPhone(),
    },
  ));
}