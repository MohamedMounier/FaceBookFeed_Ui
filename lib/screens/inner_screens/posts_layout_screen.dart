import 'package:facebook_ui/constants.dart';

import 'package:facebook_ui/screens/inner_screens/posts_screen.dart';

import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import 'menu_screen.dart';

class PostsLayoutPage extends StatefulWidget {
  @override
  _PostsLayoutPageState createState() => _PostsLayoutPageState();
}

class _PostsLayoutPageState extends State<PostsLayoutPage> {
  GlobalKey<ScaffoldState> keyDrawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Scaffold(
          drawer: screenWidth < 898
              ? MenuScreen()
              : SizedBox(
                  height: 1,
                ),
          key: keyDrawer,
          appBar: AppBar(
            leading: screenWidth < 1098 && screenWidth > 650
                ? Row(
                    children: [
                      Transform.scale(
                          scale: .6,
                          child:
                              Image(image: AssetImage('assets/icons/fb.png'))),
                      Expanded(
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey.shade400,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                : SizedBox(
                    height: 1,
                  ),
            actions: [
              screenWidth < 1100
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              keyDrawer.currentState!.openDrawer();
                              setState(() {
                                drawerIsOpened = true;
                                print('is drawer opened? $drawerIsOpened');
                              });
                            },
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: fbBackgroundColor,
                          child: Icon(
                            Icons.now_widgets_outlined,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: fbBackgroundColor,
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: fbBackgroundColor,
                          child: Icon(
                            Icons.notifications_rounded,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          backgroundColor: fbBackgroundColor,
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  : SizedBox(
                      height: 1,
                    ),
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsetsDirectional.only(start: 20, end: 20),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black54,
              labelPadding: EdgeInsets.only(bottom: 10, top: 10),
              tabs: [
                Icon(Icons.home_outlined, size: 33),
                SvgIcon(
                  'assets/icons/watchSVGtab.svg',
                ),
                SvgIcon('assets/icons/marketSVGtab.svg'),
                SvgIcon('assets/icons/groupSVGtab.svg'),
                SvgIcon('assets/icons/gamingno.svg')
                //Image(image: AssetImage('assets/icons/gamingTab.png'),width: 25,height: 30,filterQuality: FilterQuality.high),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              PostsScreen(),
              Container(
                color: Colors.pinkAccent,
                child: Center(child: Text('tab view 2')),
              ),
              Container(
                color: Colors.pinkAccent,
                child: Center(child: Text('tab view 3')),
              ),
              Container(
                color: Colors.pinkAccent,
                child: Center(child: Text('tab view 4')),
              ),
              Container(
                color: Colors.pinkAccent,
                child: Center(child: Text('tab view 5')),
              ),
            ],
          ),
        ));
  }
}
