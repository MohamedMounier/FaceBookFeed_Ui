import 'package:facebook_ui/constants.dart';
import 'package:facebook_ui/widgets/reusable_widgets.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: fbBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: screenWidth > 1237
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.end,
          children: [
            //SizedBox(width: 40,)
            screenWidth > 1337
                ? Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsetsDirectional.only(end: 70),
                      // width: 120  ,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/mypic.jpg'),
                            radius: 12,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: Text(
                            'Mohamed',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                    ),
                  )
                : Expanded(child: SizedBox()),

            Expanded(
              flex: screenWidth > 1260 ? 2 : 2,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: fbBackgroundColor,
                    child: Icon(
                      Icons.margin,
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
              ),
            )
          ],
        ),
      ),
      body: screenWidth > 898
      //was 900
          ? Stack(
              children: [
                Container(
                  height: screenHeight,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 120,
                        end: kDefaultPadding,
                        top: kDefaultPadding,
                        bottom: kDefaultPadding),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sponsored',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 120,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/mypic.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      'Register Today !',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87),
                                    ),
                                    subtitle: Text(
                                      'work.task.com',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 100,
                                    height: 80,
                                    child: Image(
                                      image:
                                          AssetImage('assets/images/mypic.jpg'),
                                      fit: BoxFit.cover,
                                    )),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      'Register Today !',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87),
                                    ),
                                    subtitle: Text(
                                      'work.task.com',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            Divider(
                              endIndent: kDefaultPadding,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Your Pages Part
                            Text(
                              '... Your Pages',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage(
                                      'assets/images/imageStory.jpg'),
                                  radius: 15,
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  'Sea Page',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: kDefaultPadding,
                                ),
                                Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ' 13 Notifications',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: kDefaultPadding,
                                ),
                                Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  ' Create Promotion',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                            Divider(
                              endIndent: kDefaultPadding,
                            ),
                            // Contacts Part
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Contacts',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.video_call,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.search_outlined,
                                        color: Colors.grey.shade600),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '...',
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemCount: 7,
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => SizedBox(
                                height: 20,
                              ),
                              itemBuilder: (context, index) => Row(
                                children: [
                                  profilePicCircle(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Mohamed Mounier',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: kDefaultPadding,
                            ),
                            Divider(
                              endIndent: kDefaultPadding,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Group Conversation',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade300,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                  radius: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Create New Group',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                Positioned(
                    bottom: kDefaultPadding,
                    right: screenWidth > 1238
                        ? kDefaultPadding * 2
                        : kDefaultPadding,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.black54)
                              ]),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/mypic.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.black54)
                              ]),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/mypic.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 10,
                                    color: Colors.black54)
                              ]),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.rate_review_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            )
          : SizedBox(
              width: 10,
            ),
    );
  }
}
/*
 Row(
                    children: [
                      profilePicCircle(),
                      SizedBox(width: 10,),
                      Text('Mohamed Mounier',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87
                        ),),
                    ],
                  )
 */
