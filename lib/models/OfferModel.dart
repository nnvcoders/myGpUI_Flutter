import 'package:flutter/material.dart';

class OfferItems extends StatelessWidget {
  const OfferItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: Colors.white,
        width: Size.infinite.width,
        padding: const EdgeInsets.only(
            top: 12.0, left: 12.0, right: 12.0, bottom: 4.0),
        margin: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              labelStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              tabs: [
                Tab(text: 'Popular'),
                Tab(text: 'My Offers'),
              ],
            ),
            const SizedBox(height: 12.0),
            SizedBox(
              height: 550,
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      const OfferWidgetItem(
                          data: '5 GB', time: '7 Days', price: '৳114'),
                      const OfferWidgetItem(
                          data: '10 GB', time: '30 Days', price: '৳399'),
                      const OfferWidgetItem(
                          data: '8 GB', time: '7 Days', price: '৳148'),
                      const OfferWidgetItem(
                          data: '3 GB', time: '72 Hours', price: '৳69'),
                      const OfferWidgetItem(
                          data: '2 GB', time: '72 Hours', price: '৳57'),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all offers  >',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const OfferWidgetItem(
                          data: '100 GB (MaxOnce)',
                          time: 'Unlimited',
                          price: '৳500'),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'View all offers  >',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferWidgetItem extends StatelessWidget {
  final String data;

  final String time;
  final String price;

  const OfferWidgetItem(
      {Key? key, required this.data, required this.time, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.1, color: Colors.black.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.card_giftcard, color: Colors.blue),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data,
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600)),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(time,
                          style: const TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400)),
                      const SizedBox(width: 8.0),
                      const Spacer(),
                      Text(price,
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                      const Icon(Icons.keyboard_arrow_right,
                          color: Colors.blue),
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
