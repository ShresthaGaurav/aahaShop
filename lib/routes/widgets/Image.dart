import 'dart:convert';

import 'package:aahashop/routes/model/images.dart';
import 'package:aahashop/routes/model/packages.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyImage extends StatelessWidget {
  int id;
  int newid;
  // name constructor that has a positional parameters with the text required
  // and the other parameters optional
  MyImage({@required this.id});

  @override
  Widget build(BuildContext context) {
    // imgs();
  newid = id+1;
    return Image.network(
      "http://aahashop.com/wp-content/uploads/2020/12/Camon-15-Pro-300x300.png"
    );
  }

  Future<List<PropImages>> imgs() async {
    var url = 'http://aahashop.com/wp-json/wp/v2/media${newid}';
    var response = await http.get(url);

    if (response.statusCode == 200) {

      var single = json.decode(response.body);
      // var single = output.map((m) => new PropImages.fromJson(m)).toList();

      print(single);

      } else {
      throw Exception('Failed to load packages');
      }
      }

}