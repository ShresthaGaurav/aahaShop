import 'package:flutter/material.dart';

class Product {
  final String image, title;
  int id;

  Product({this.image, this.title,this.id});}

  List<Product> products = [
    Product(image: 'assets/images/image1.jpg', title: "asd1",id: 1),
    Product(image: 'assets/images/image2.jpg', title: "asd2",id: 2),
    Product(image: 'assets/images/image3.jpg', title: "asd3",id: 3),
  ];

