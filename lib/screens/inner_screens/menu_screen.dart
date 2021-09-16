import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/widgets/reusable_widgets.dart';

import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool seeMoreitems = false;
  bool seeMoreShortcuts = false;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double screenHeight = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.height
        : MediaQuery.of(context).size.width;
    double screenWidth = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: screenWidth > 650
          ? AppBar(
              actions: [
                drawerIsOpened
                    ? IconButton(
                        icon: Icon(
                          Icons.clear,
                          color: Colors.black54,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            drawerIsOpened = false;
                          });
                        })
                    : SizedBox(
                        width: 100,
                      )
              ],
              backgroundColor: Colors.white,
              elevation: 1,
              leading: Transform.scale(
                  scale: .8,
                  child: Image(image: AssetImage('assets/icons/fb.png'))),
              title: searchText(),
            )
          : null,
      backgroundColor: fbBackgroundColor,
      body: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/mypic.jpg'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Mohamed Mounier Abbas',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/friends.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Friends',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/pages.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Pages',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Groups',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/marketplace.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Marketplace',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/watch.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Watch',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            seeMoreitems == false
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        seeMoreitems = true;
                      });
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300.withOpacity(.7),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          ),
                          radius: 15,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'See More',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/AdCenter.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Ad Center',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/adsManager.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Ad Manager',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/businessSuite.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Business Suite',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/jobs.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Jobs',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 13),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            seeMoreitems = false;
                          });
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Colors.grey.shade300.withOpacity(.7),
                              child: Icon(
                                Icons.arrow_drop_up,
                                color: Colors.black,
                                size: 30,
                              ),
                              radius: 15,
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Text(
                              'See Less',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
            SizedBox(
              height: 15,
            ),
            Divider(
              thickness: 1,
              endIndent: 100.0,
            ),
            SizedBox(
              height: 10,
            ),
            //Your Shortcuts Part
            Text(
              'Your Shortcuts',
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Page Number 1',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Page Number 2',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Group Number 1',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Group Number 2',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/icons/groups.png'),
                  radius: 15,
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Group Number 3',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            seeMoreShortcuts == false
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        seeMoreShortcuts = true;
                      });
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade300.withOpacity(.7),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          ),
                          radius: 15,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'See More',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/groups.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Extended Group',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/icons/groups.png'),
                            radius: 15,
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Text(
                            'Extended Page',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            seeMoreShortcuts = false;
                          });
                        },
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Colors.grey.shade300.withOpacity(.7),
                              child: Icon(
                                Icons.arrow_drop_up,
                                color: Colors.black,
                                size: 30,
                              ),
                              radius: 15,
                            ),
                            SizedBox(
                              width: 11,
                            ),
                            Text(
                              'See Less',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
            Divider(
              thickness: 1,
              endIndent: 100.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Privacy . Terms . Advertising . AdChoices . Cookies . \nMore . Facebook 2021',
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
