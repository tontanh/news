import 'package:exam/pages/newspage/detailnews.dart';
import 'package:exam/pages/profile/datenow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_controller.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  TextEditingController roomdatesearch = TextEditingController();
  bool isbook1 = true;
  bool isbook2 = false;
  bool isbook3 = false;
  bool isbook4 = false;
  String dateSearchs = '';
  TextEditingController txtsearch = TextEditingController();
  DateTime selectedDate = DateTime.now();
  TextEditingController datecontroler = TextEditingController();
  String? timeday;
  final datetimeget = Get.put(Datecontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            expandedHeight: 100,
            //    stretch: true,
            pinned: true,
            title: Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(
                'NEWS'.tr,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [
                // StretchMode.blurBackground,
              ],
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  textontop(),
                  SizedBox(height: 40),
                  // bgtop(),
                  iteambotsearch(),
                ],
              ),
            ),
          ),
          //  color: Color(0xffF5F5F5),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  isbook1 ? new1() : Container(),
                  isbook2 ? new2() : Container(),
                  isbook3 ? new3() : Container(),
                  isbook4 ? new1() : Container(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  iteambotsearch() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // SizedBox(width: 20),
            txtbuttonitem1(),
            txtbuttonitem2(),
            txtbuttonitem3(),
            txtbuttonitem4(),
          ],
        ));
  }

  txtbuttonitem1() {
    return Container(
      height: 40,
      width: 90,
      margin: EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: isbook1 ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isbook1 = true;
            isbook2 = false;
            isbook3 = false;
            isbook4 = false;
          });
        },
        child: Text(
          'docs 1',
          style: TextStyle(color: isbook1 ? Colors.white : Colors.blue),
        ),
      ),
    );
  }

  txtbuttonitem2() {
    return Container(
      height: 40,
      width: 100,
      margin: EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: isbook2 ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isbook1 = false;
            isbook2 = true;
            isbook3 = false;
            isbook4 = false;
          });
        },
        child: Text(
          'document 2',
          style: TextStyle(color: isbook2 ? Colors.white : Colors.blue),
        ),
      ),
    );
  }

  txtbuttonitem3() {
    return Container(
      height: 40,
      width: 120,
      margin: EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: isbook3 ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isbook1 = false;
            isbook2 = false;
            isbook3 = true;
            isbook4 = false;
          });
        },
        child: Text(
          'documents 3',
          style: TextStyle(color: isbook3 ? Colors.white : Colors.blue),
        ),
      ),
    );
  }

  txtbuttonitem4() {
    return Container(
      height: 40,
      width: 120,
      margin: EdgeInsets.only(top: 10, left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        color: isbook4 ? Colors.blue : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            isbook1 = false;
            isbook2 = false;
            isbook3 = false;
            isbook4 = true;
          });
        },
        child: Text(
          'infomation',
          style: TextStyle(color: isbook4 ? Colors.white : Colors.blue),
        ),
      ),
    );
  }

  new1() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newWidget(),
          newWidget(),
          newWidget(),
          newWidget(),
          newWidget(),
        ],
      ),
    );
  }

  new2() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newWidget(),
        ],
      ),
    );
  }

  new3() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newWidget(),
          newWidget(),
          newWidget(),
          newWidget(),
          newWidget(),
        ],
      ),
    );
  }

  newWidget() {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          draggled();
        },
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
                const Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "title that ou want to show in this news ",
                    // style: titleTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: const [
                      Text(
                        "Yesterday, 9:24 PM",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "type of news",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
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
            )
          ],
        ),
      ),
    );
  }

  draggled() {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.92,
          minChildSize: 0.2,
          maxChildSize: 1,
          builder: (context, scrollController) {
            return Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const DetailNews());
          },
        ),
      ),
    );
  }
}
