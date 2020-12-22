import 'package:aahashop/routes/frontView/categ/CateTiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CateList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Category",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CateTiles("assets/images/shirt.svg", "shirt"),
                  CateTiles("assets/images/shoe.svg", "shoes"),
                  CateTiles("assets/images/short.svg", "short"),
                  CateTiles("assets/images/high-heels.svg", "High Heels"),
                  CateTiles("assets/images/shirt.svg", "shirt"),
                  CateTiles("assets/images/shoe.svg", "shoes"),
                  CateTiles("assets/images/short.svg", "short"),
                  CateTiles("assets/images/high-heels.svg", "High Heels"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
