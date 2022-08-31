// ignore_for_file: camel_case_types

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/Constants.dart';
import 'package:to_do_list/view/components/allPage.dart';
import 'package:to_do_list/view/components/doingPage.dart';
import 'package:to_do_list/view/components/donePage.dart';

class Home_view extends StatefulWidget {
  const Home_view({Key? key}) : super(key: key);

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  @override
  Widget build(BuildContext context) {
    int btnIndex = 0;

    List<IconData> iconList = [
      Icons.library_books_outlined,
      Icons.playlist_remove_rounded,
      Icons.fact_check_outlined,
    ];
    List<Widget> pages = const [AllPage(), DoingPage(), DonePage()];

    /* Size size = MediaQuery.of(context).size; */
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 7, 7, 7),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, top: 2),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.4),
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: TextField(
                              showCursor: false,
                              decoration: InputDecoration(
                                hintText: 'Ajoutez une tâche',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.search)
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Tâches du ',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 112, 112, 112),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          ' 21/07/2020',
                          style: TextStyle(
                              fontSize: 24,
                              color: Constants.myYellow,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Constants.myGray),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.search),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: btnIndex,
              children: pages,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.myGray,
        onPressed: () {},
        child: const Icon(
          Icons.my_library_add_outlined,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.white,
        backgroundColor: Constants.myYello,
        activeColor: Colors.white,
        inactiveColor: Constants.myGrayInOrange,
        gapLocation: GapLocation.end,
        icons: iconList,
        activeIndex: btnIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (p0) {
          setState(() {
            btnIndex = p0;
          });
        },
      ),
    );
  }
}
