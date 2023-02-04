import 'package:flutter/material.dart';

class ExploreModel extends StatelessWidget {
  const ExploreModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              children: const [
                Text("Explore",
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
                Padding(
                  padding: EdgeInsets.only(top: 3.0, left: 4.0),
                  child: Icon(Icons.keyboard_arrow_right,
                      color: Colors.blue, size: 28.0),
                ),
              ],
            ),
          ),
          Row(
            children: const [
              ExploreModelItem(title: 'Watch', image: 'assets/images/icon/watch.png'),
              ExploreModelItem(title: 'Sports', image: 'assets/images/icon/sports.png'),
              ExploreModelItem(title: 'News', image: 'assets/images/icon/news.png'),
            ],
          ),
          SizedBox(height: 8.0),
          Row(children: const [
            ExploreModelItem(title: 'Learn', image: 'assets/images/icon/learn.png'),
            ExploreModelItem(title: 'Shop', image: 'assets/images/icon/shop.png'),
            ExploreModelItem(title: 'Game', image: 'assets/images/icon/game.png'),
          ]),
        ],
      ),
    );
  }
}

class ExploreModelItem extends StatelessWidget {
  const ExploreModelItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 3 - 9,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}