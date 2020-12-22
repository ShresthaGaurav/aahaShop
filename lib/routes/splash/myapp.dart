import 'package:aahashop/properties.dart';
import 'package:aahashop/routes/home/home.dart';
import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new Home(),
      title: Text(
        "Aaha shopping Unlimited",
        style: TextStyle(
          color: text_color,
          fontSize: 20,
        ),
      ),
      image: new Image.network(
        'http://aahashop.com/wp-content/uploads/2020/09/Aaha-shop-logo.png',height: 450,
        alignment: Alignment.bottomCenter,
      ),
      backgroundColor: background_color,
      photoSize: 200.0,
      loaderColor: Colors.white,
      loadingText: Text("loading...."),
      useLoader: true,
    );
  }
}
