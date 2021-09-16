
import 'package:facebook_ui/screens/inner_screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'mobile_widgets_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double screenHeight = orientation==Orientation.portrait?MediaQuery.of(context).size.height:MediaQuery.of(context).size.width;
    double screenWidth = orientation==Orientation.portrait?MediaQuery.of(context).size.width:MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                actions: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade50,
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade50,
                    child: Icon(
                      Icons.message,
                      color: Colors.black,
                    ),
                  ),
                ],
                title: Text(
                  'facebook',
                  style: TextStyle(color: Colors.blue.shade800, fontSize: 23),
                ),
                floating: true,
                pinned: true,
                // snap: true,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.blue.shade400,
                  indicatorWeight: 2,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black54,
                  tabs: <Tab>[
                    Tab(
                        child: Icon(
                      Icons.home_outlined,
                      size: 33,
                    )),
                    Tab(
                        child: SvgIcon(
                      'assets/icons/watchSVGtab.svg',
                    )),
                    Tab(child: SvgIcon('assets/icons/marketSVGtab.svg')),
                    Tab(child: SvgIcon('assets/icons/groupSVGtab.svg')),
                    Tab(
                        child: Icon(
                      Icons.notifications,
                      size: 33,
                    )),
                    Tab(
                        child: Icon(
                      Icons.menu,
                      size: 33,
                    ))
                  ], // <-- total of 2 tabs
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              PostsTab(
                screenHeight: screenHeight,
                screenWidth:screenWidth
              ),
              Container(
                color: Colors.pinkAccent,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.lightBlue,
              ),
              Container(
                color: Colors.brown,
              ),
              MenuScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
/*
screenHeight: orientation == Orientation.portrait
                    ? screenHeight
                    : screenWidth,
                screenWidth: orientation == Orientation.portrait
                    ? screenWidth
                    : screenHeight,
 */