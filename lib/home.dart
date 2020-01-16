import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_app/components/horizontal_listview.dart';
import 'package:flutter_app/components/products.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/carousel1.jpg'),
        AssetImage('images/carousel2.jpg'),
        AssetImage('images/carousel3.jpg'),
        AssetImage('images/carousel4.jpg'),
        AssetImage('images/carousel5.jpg'),
      ],
      autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: Text('Arjun Jajoo'),
                accountEmail: Text('arjunjajoo90@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                  backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white,)),
            ),
            decoration: new BoxDecoration(
              color: Colors.red
            ),
            ),

            // body

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite)
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings)
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color:Colors.blue)
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[

          //image carousel begins here
          image_carousel,

          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          // Horizontal list view begins here
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),

          // grid view
          Container(
            height: 320.0,
            child: Products()
          )

        ],
      ),
    );
  }
}


