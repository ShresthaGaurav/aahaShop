import 'dart:convert';

import 'package:aahashop/routes/model/images.dart';
import 'package:aahashop/routes/model/packages.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/images.dart';
import '../model/images.dart';
import '../model/images.dart';

// ignore: must_be_immutable
class MyImage extends StatefulWidget {
  int id;
  int media;
  // name constructor that has a positional parameters with the text required
  // and the other parameters optional
  MyImage({@required this.id, this.media});

  @override
  _MyImageState createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  Future<List<PropImages>> futureImages;

  @override
  void initState() {
    super.initState();
    futureImages = imgs();
  }

  Future<List<PropImages>> imgs() async {
    var url = 'http://aahashop.com/wp-json/wp/v2/media?parent=${widget.id}';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List single = json.decode(response.body);
      return single.map((m) => new PropImages.fromJson(m)).toList();
    } else {
      throw Exception('Failed to load packages');
    }
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<PropImages>>(
      future: futureImages,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PropImages> posts = snapshot.data;
          return new Column(
              children: posts.
              map((element) => Image.network(
                  element.string,
                height: 140,
              )).toList()
          );
        }
              else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}
