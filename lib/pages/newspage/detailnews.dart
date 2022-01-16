import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({Key? key}) : super(key: key);
  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/ads1.png'),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: const [
                    Text(
                      "title this news",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Yesterday, 9:24 PM",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
          Positioned(
            top: 190,
            left: 20.0,
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.all(4.0),
              child: const Text(
                "NEW",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 260, left: 20, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: const [
                            Text(
                              "   title that you want to show in this new title that you want to show in this new title that you want to show in this new title that you want to show in this new title that you want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in title that ou want to show in this newsthis title that ou want to show in this news news title that ou want to show in this newstitle that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in title that ou want to show in this newsthis title that ou want to show in this news news title that ou want to show in this newstitle that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in title that ou want to show in this newsthis title that ou want to show in this news news title that ou want to show in this newstitle that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in title that ou want to show in this newsthis title that ou want to show in this news news title that ou want to show in this newstitle that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in this news title that ou want to show in title that ou want to show in this newsthis title that ou want to show in this news news title that ou want to show in this newstitle that ou want to show in this news",
                              // style: titleTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //SizedBox(height: 00),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
