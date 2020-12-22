import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GridProduct {
  String name;
  String image;
  int old_price;
  int price;
  int time;



  GridProduct({this.name, this.image, this.old_price, this.price, this.time});
}

List<GridProduct> hotdeal = [
  GridProduct(
      name: "a1",
      image: 'assets/images/image1.jpg',
      old_price: 120,
      price: 80,
      time: 4),
  GridProduct(
      name: "a2",
      image: 'assets/images/image1.jpg',
      old_price: 1200,
      price: 800,
      time: 2),
  GridProduct(
      name: "a3",
      image: 'assets/images/image1.jpg',
      old_price: 12,
      price: 8,
      time: 1),
  GridProduct(
      name: "a4",
      image: 'assets/images/image1.jpg',
      old_price: 20,
      price: 5,
      time: 1),
];
