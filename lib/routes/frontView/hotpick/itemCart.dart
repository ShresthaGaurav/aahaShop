import 'package:flutter/material.dart';

class ItemsCards extends StatelessWidget {
  final List product;

  ItemsCards(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {},
      // child: Card(
      //   child: Hero(
      //     tag: product['title']['render'],
      //     child: GridTile(
      //       child: Image.asset(
      //         product.image,
      //         fit: BoxFit.cover,
      //       ),
      //       footer: Container(
      //         color: Colors.white,
      //         child: ListTile(
      //           leading: Text(product.name),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
