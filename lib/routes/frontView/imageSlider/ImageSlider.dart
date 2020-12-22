import 'package:aahashop/properties.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSloders extends StatefulWidget {
  @override
  _ImageSlodersState createState() => _ImageSlodersState();
}

class _ImageSlodersState extends State<ImageSloders> {
  @override
  Widget image_slider_carousel = Container(
    height: 200,
    child: Carousel(
      borderRadius: true,
      radius: Radius.circular(10),
     dotPosition: DotPosition.bottomCenter,
      showIndicator: true,
      autoplay: true,
      boxFit: BoxFit.cover,
      dotSize: 4,
      indicatorBgPadding: 2.0,
      dotColor: background_color,
      autoplayDuration: Duration(seconds: 20),
      images: [
        AssetImage("assets/images/image1.jpg"),
        AssetImage("assets/images/image2.jpg"),
        AssetImage("assets/images/image3.jpg"),
        AssetImage("assets/images/image4.jpg"),
        AssetImage("assets/images/image5.jpg"),
      ],
    ),
  );

  Widget build(BuildContext context) {
    return Container(
      height: 200,
     child: Padding(
       padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
       child: image_slider_carousel,
     ),
    );
  }
}
