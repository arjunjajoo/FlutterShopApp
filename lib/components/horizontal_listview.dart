import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'pants',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'casual',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'footwear',
          ),
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'accessories',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            height: 80.0,
            child: ListTile(
              title: Image.asset(image_location),
              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(image_caption)),
            ),
          )),
    );
  }
}
