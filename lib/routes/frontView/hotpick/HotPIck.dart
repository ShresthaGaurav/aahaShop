import 'dart:convert';
import 'dart:io';

import 'package:aahashop/routes/model/images.dart';
import 'package:aahashop/routes/model/packages.dart';
import 'package:aahashop/routes/widgets/Image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HotPick extends StatefulWidget {
  @override
  _HotPickState createState() => _HotPickState();
}

class _HotPickState extends State<HotPick> {
  Future<List<Packages>> futurePackages;

  void initState() {
    super.initState();
    futurePackages = fetchproduct();
  }

  Future<List<Packages>> fetchproduct() async {
    var url = 'http://aahashop.com/wp-json/wp/v2/product?per_page=100';
    var response = await http.get(url);

    if (response.statusCode == 200) {


      List output = json.decode(response.body);
      var single = output.map((m) => new Packages.fromJson(m)).toList();
      print(single);
      return single;
    } else {
      throw Exception('Failed to load packages');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Packages>>(
        future: futurePackages,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Packages> posts = snapshot.data;
            return new Column(
                children: posts
                    .map((post) => new Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(post.title),
                              subtitle: Text("${post.id}"),
                              leading: MyImage(id: post.id,),
                            ),
                          ],
                        ))
                    .toList());
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }



}
