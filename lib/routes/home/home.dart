import 'package:aahashop/properties.dart';
import 'package:aahashop/routes/frontView/categ/Catelist.dart';
import 'package:aahashop/routes/frontView/hotpick/HotPIck.dart';
import 'package:aahashop/routes/frontView/imageSlider/ImageSlider.dart';
import 'package:aahashop/routes/seaerch/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),

      body: ListView(
        children: [
          ImageSloders(),
          CateList(),
          HotPick(),

        ],
      ),
    );
  }

  Drawer CustomDrawer() {
    return Drawer(
      elevation: 10,
      child: Container(
        // color: background_color,
        child: ListView(
          children: [
            Container(
              child: new UserAccountsDrawerHeader(
                  accountName: Text("Welcome"),
                  decoration: BoxDecoration(color: background_color),
                  accountEmail: Text("Welcome@asd.com"),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundImage: new NetworkImage(
                          "https://exclaim.ca/images/avatar_4.jpg"),
                    ), onTap: () {
                    UserUpdate();
                  },

                  ),

              ),
            ),
            Divider(
              color: background_color,
              thickness: 10,
              height: 0.5,
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildIconButton('assets/images/like.svg', () {}),
                  buildIconButton('assets/images/shopping-cart.svg', () {}),
                  buildIconButton('assets/images/user.svg', () {}),
                ],
              ),
            ),
            Divider(
              color: background_color,
              thickness: 5,
              height: 0.3,
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),

              ),
            )
          ],
        ),
      ),
    );
  }

  void UserUpdate() {
    showDialog(
      context: context, builder: (context) =>
        AlertDialog(
          title: Text("Profile Update"),
          content: Text("Do you want to update Profile"),
      actions: [
        FlatButton(onPressed: (){}, child: Text("yes")),
        FlatButton(onPressed: (){}, child: Text("no")),

      ],
        ),
    );
  }

  AppBar CustomAppBar() {
    return new AppBar(
      backgroundColor: background_color,
      title: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Image.network(
          'http://aahashop.com/wp-content/uploads/2020/09/Aaha-shop-logo.png',
          height: 53,
        ),
      ),
      actions: [
        buildIconButton('assets/images/like.svg', () {}),
        buildIconButton('assets/images/shopping-cart.svg', () {}),
        buildIconButton('assets/images/user.svg', () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(40, 60),
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Container(
            height: 35,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Search(),
                  ),
                ),
                Expanded(
                    flex: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: background_color,
                            width: 5,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: background_color,
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconButton(String image, Function work) {
    return IconButton(
      icon: SvgPicture.asset(
        image,
        height: icon_height,
        color: Colors.blue,
      ),
      onPressed: work,
    );
  }
}