import 'package:aahashop/routes/splash/Splash.dart';
import 'package:aahashop/routes/splash/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/': (context) => MyApp()},
    debugShowCheckedModeBanner: false,
  ));
}
