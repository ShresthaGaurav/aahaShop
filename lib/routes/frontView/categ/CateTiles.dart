import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CateTiles extends StatelessWidget {
  String image_name;
  String cate_name;

  CateTiles(this.image_name, this.cate_name);

  @override
  Widget build(BuildContext context) {
    print(image_name);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          width: 100.0,
          child: ListTile(
            title: SvgPicture.asset(
              image_name,
              height: 45,
              width: 50,

            ),
            subtitle: Container(

              child: Text(cate_name,style: TextStyle(fontSize: 14),textAlign:TextAlign.center,),
            ),
          ),
        ),
      ),
    );
  }
}
