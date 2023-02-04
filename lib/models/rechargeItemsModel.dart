import 'package:flutter/material.dart';

class RechageItems extends StatefulWidget {
  const RechageItems({super.key});

  @override
  State<RechageItems> createState() => _RechageItemsState();
}

class _RechageItemsState extends State<RechageItems> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(
                        "assets/images/logoBkash.png",
                      ),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 42,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      // color: const Color.fromARGB(255, 248, 234, 233),
                      color: Colors.yellow.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(
                          "assets/images/nagadLogo.png",
                        ),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 80,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      // color: const Color.fromARGB(255, 232, 236, 252),
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(
                          "assets/images/visa.png",
                        ),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 122,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(
                          "assets/images/mastercardLogo.png",
                        ),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 164,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "+2",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {},
                child: const Text("Recharge Now"))
          ],
        ),
      ),
    );
  }
}
