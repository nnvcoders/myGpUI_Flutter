import 'package:flutter/material.dart';
import 'package:mygp/models/ExploreModel.dart';
import 'package:mygp/models/SingleOfferModel.dart';
import 'models/AccountDetailsModel.dart';
import 'models/AppBarModel.dart';
import 'models/BottomBarModel.dart';
import 'models/CashBackModel.dart';
import 'models/OfferModel.dart';
import 'models/rechargeItemsModel.dart';
import 'models/subPlanModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarModel(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            accountDetailsModel(),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            const RechageItems(),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SingleOfferModelItem(data: '19 TK 1 GB Offer for 7 Days', time: 'Click Now',),
                    SingleOfferModelItem(data: '21 TK 4 GB Offer for 3 Days', time: 'Click Now',),
                    SingleOfferModelItem(data: '99 TK 27 GB Offer for 15 Days', time: 'Click Now',),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free Subscription Plan !',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SubPlanWidget(context, "assets/images/ads1.jpg"),
                        SubPlanWidget(context, "assets/images/ads2.jpg"),
                        SubPlanWidget(context, "assets/images/ads3.jpg"),
                        SubPlanWidget(context, "assets/images/ads4.jpg"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/flexiplan.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Flexiplan')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/internet.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Internet')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/minute.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Minutes')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/recharge.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Recharge')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/gpPoint.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Gp Point')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/bundle.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Bundle')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/gpStar.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Gp Star')
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/icon/location.png'),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Location')
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 5,
            ),
            CashBackModel(context),
            const SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const OfferItems(),
            Divider(
              color: Colors.grey.withOpacity(0.2),
              thickness: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            const ExploreModel(),


          ],
        ),
      ),
      bottomNavigationBar: const CustomBarModel(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Explore',
        elevation: 2.0,
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Image.asset('assets/images/icon/explore.png',
            height: 40.0, width: 40.0),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
