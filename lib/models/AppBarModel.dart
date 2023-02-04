import 'package:flutter/material.dart';
PreferredSize CustomAppBarModel() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: AppBar(
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      )),
                  child: const CircleAvatar(
                    radius: 23.0,
                    backgroundImage: NetworkImage(
                        'https://scontent.fdac147-1.fna.fbcdn.net/v/t39.30808-6/324675813_851446806084485_982902121806780651_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEM6D2ON2vYwGXfqC-6XaeFQlSM0hiIaERCVIzSGIhoROCGEiqK8HRtTQXvepDZi8eMQjmQlL72KhVDsuyQXS_Y&_nc_ohc=j3-rydIMjXMAX-WOIc-&_nc_ht=scontent.fdac147-1.fna&oh=00_AfBf2HcvPFrrtH4S3b4P-lw_gEJvJKGcTUtPTkGdPTsGOg&oe=63E27E11'),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('NNV Coders',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.0)),
                  Row(
                    children: const [
                      Text('01758195324',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 35,
              ),
              const Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/images/coin.png',
                height: 28,
                width: 28,
                color: Colors.white,
              ),
              // const Icon(
              //   Icons.memory,
              //   size: 30,
              //   color: Colors.white,
              // ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}