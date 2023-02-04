import 'package:flutter/material.dart';

class SingleOfferModel extends StatelessWidget {
  final String point;

  const SingleOfferModel({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.money, color: Colors.orange),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('You have $point GP Points',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  const Text('Get FREE Offers',
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

class SingleOfferModelItem extends StatelessWidget {
  final String data;
  final String time;

  const SingleOfferModelItem({Key? key, required this.data, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.2),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.only(bottom: 16.0, right: 12.0),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: [],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(time,
                          style: const TextStyle(
                            color: Colors.blue,
                              fontSize: 15.0, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.purple),
                        child: Icon(Icons.public, color: Colors.white,),
                      ),
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
