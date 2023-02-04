import 'package:flutter/material.dart';
import 'package:mygp/models/subPlanModel.dart';

Widget CashBackModel(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cashback Offers !',
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
              cashBackOffers(context, "assets/images/ads4.jpg"),
              cashBackOffers(context, "assets/images/ads3.jpg"),
              cashBackOffers(context, "assets/images/ads2.jpg"),
              cashBackOffers(context, "assets/images/ads1.jpg"),
            ],
          ),
        )
      ],
    ),
  );
}