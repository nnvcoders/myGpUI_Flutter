import 'package:flutter/material.dart';
Widget accountDetailsModel() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Emergency Balance',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xfffc6a6e)),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xfffc6a6e)
                              .withOpacity(0.5),
                          width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            '৳50.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 30),
                          ),
                          Text(
                            'Available',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'Details',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      '0 MB',
                      style: TextStyle(color: Colors.red),
                    ),
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.public,
                      color: Color(0xfffc6a6e),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    endIndent: 20,
                    indent: 40,
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  const ListTile(
                    title: Text('0 Min'),
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.call,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    endIndent: 20,
                    indent: 40,
                    thickness: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  const ListTile(
                    title: Text('0 SMS'),
                    horizontalTitleGap: 0,
                    leading: Icon(
                      Icons.message_outlined,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}