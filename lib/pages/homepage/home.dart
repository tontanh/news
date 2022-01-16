import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/language/change_language.dart';
import 'package:exam/pages/homepage/more.dart';
import 'package:exam/pages/homepage/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final _heightNews = _heightScreen / 4;

    final List<String> imgList = [
      'assets/images/ads1.png',
      'assets/images/ads2.png',
      'assets/images/ads3.png',
      'assets/images/ads4.png',
    ];

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: const [Icon(Icons.language)],
        // ),
        // backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 5, right: 5, top: 10),
                  height: _heightNews,
                  // margin: EdgeInsets.all(10).copyWith(bottom: 0),
                  decoration: BoxDecoration(
                    // color: kMainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    items: imgList
                        .map((item) => Container(
                              child: Center(
                                  child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              )),
                            ))
                        .toList(),
                  )),
              Container(
                margin: const EdgeInsets.only(bottom: 13, right: 10),
                child: InkWell(
                  onTap: () {
                    ChangeLanguage().ChangeLanguages(context: context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.language,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        'language'.tr,
                        style: kSmallText.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: [
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 1',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 2',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 3',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 4',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 5',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'display 6',
                      onTap: () {},
                    ),
                    menuItem(
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'more'.tr,
                      onTap: () {
                        Get.to(() => const MoreScreen(),
                            transition: Transition.rightToLeft);
                      },
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 100,
              //   color: Colors.white,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell menuItem(
      {required Icon icon,
      required String text,
      required VoidCallback onTap,
      Color color = Colors.blue}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 33,
            backgroundColor: color,
            child: icon,
          ),
          const SizedBox(height: 2),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
