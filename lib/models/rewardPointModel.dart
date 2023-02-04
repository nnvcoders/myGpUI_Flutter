import 'package:flutter/material.dart';
class RewardPoint extends StatelessWidget {
  const RewardPoint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 4.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyPointWidgetItem(point: '1685'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PointWidgetItem(
                    data: '1 GB', time: '3 Days', point: '500 Points'),
                PointWidgetItem(
                    data: '2 GB', time: '3 Days', point: '1000 Points'),
                PointWidgetItem(
                    data: '3 GB', time: '3 Days', point: '1500 Points'),
                PointWidgetItem(
                    data: '4 GB', time: '3 Days', point: '2000 Points'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyPointWidgetItem extends StatelessWidget {
  final String point;

  const MyPointWidgetItem({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.money, color: Colors.orange),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('You have $point GP Points',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text('Get FREE Offers',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PointWidgetItem extends StatelessWidget {
  final String data;
  final String time;
  final String point;

  const PointWidgetItem(
      {Key? key, required this.data, required this.time, required this.point})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(bottom: 16.0, right: 12.0),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.public, color: Colors.blue),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(time,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text(point,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}