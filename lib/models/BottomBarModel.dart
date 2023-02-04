import 'package:flutter/material.dart';

class CustomBarModel extends StatelessWidget {
  const CustomBarModel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        notchMargin: 6.0,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 80,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.home, color: Colors.blue, size: 28.0),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Icon(Icons.local_offer, color: Colors.black45, size: 28.0),
                    Image.asset('assets/images/icon/offer.png', height: 25, width: 25, color: Colors.grey,),
                    const Text(
                      'Offers',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.person, color: Colors.black45, size: 28.0),
                    Text(
                      'Account',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.menu, color: Colors.black45, size: 28.0),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
