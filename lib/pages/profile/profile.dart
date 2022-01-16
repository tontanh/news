import 'package:exam/pages/homepage/more.dart';
import 'package:exam/pages/homepage/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final _circleImage = _heightScreen / 14;
    final _heightNews = _heightScreen / 8;
    bool _pinned = false;
    bool _snap = false;
    bool _floating = false;
    String _teacherName = 'Name : tontanh';
    String _teacherId = 'ID : 21321 1323';
    String _teacherPosition = 'Position : IT';

    ImageProvider backgroundImage;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(width: 0),
                  ),
                  child: SizedBox(
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 125),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  _teacherName,
                                  style: kBigText,
                                ),
                                Text(
                                  _teacherId,
                                  style: kSmallText,
                                ),
                                Text(
                                  _teacherPosition,
                                  style: kSmallText,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: Colors.white,
                            height: 60,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 100,
                            width: 100,
                            child: Stack(
                              children: [
                                Align(
                                  child: Container(
                                    height: 100,
                                  ),
                                  alignment: Alignment.bottomCenter,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        width: 5, color: Colors.white),
                                    borderRadius:
                                        BorderRadius.circular(_circleImage),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          blurRadius: 1),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _circleImage,
                                    backgroundColor: Colors.white,
                                    backgroundImage: const AssetImage(
                                        'assets/images/profile.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: _heightNews,
                      // margin: EdgeInsets.all(10).copyWith(bottom: 0),
                      decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'ພາບໂຄສະນາ ຫລື ຂ່າວສານ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    // Container(
                    //   color: Colors.white,
                    //   width: double.infinity,
                    //   alignment: Alignment.center,
                    //   margin: EdgeInsets.all(5),
                    //   child: Text(
                    //     schoolname,
                    //     style: kBigText.copyWith(color: Colors.black),
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
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
                            text: 'more',
                            onTap: () {
                              Get.to(() => const MoreScreen(),
                                  transition: Transition.rightToLeft);
                            },
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   height: 500,
                    //   color: Colors.white,
                    // ),
                  ],
                ),
              ),
            ),
          ],
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
