import 'package:exam/pages/homepage/style.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MORE MENU'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15),
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
