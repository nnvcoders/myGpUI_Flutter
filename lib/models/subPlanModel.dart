import 'package:flutter/material.dart';

Widget SubPlanWidget(BuildContext context, String ImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      height: 210,
      width: MediaQuery.of(context).size.width - 80,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 0.5)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image.asset(
                ImageUrl,
                fit: BoxFit.cover,
                height: 150,
                width: 360,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Tap to get Free subscription !  >',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ],
      ),
    ),
  );
}

Widget cashBackOffers(BuildContext context, String ImageUrl) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      height: 210,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 0.5)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
              child: Image.asset(
                ImageUrl,
                fit: BoxFit.cover,
                height: 150,
                width: 360,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Click to recharge now !  >',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 17),
          ),

        ],
      ),
    ),
  );
}
